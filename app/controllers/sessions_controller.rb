class SessionsController < ApplicationController
    def create
        @user = User.find_by_authorid(params[:authorid])
        if( @user && @user.authenticate(params[:password]) )
            session[:user_id] = @user.id
            flash.notice = @user.authorid + "としてログインしました"
            redirect_to("/my")
        else
            flash.notice = "ログインに失敗しました"
            redirect_to("/users/login")
        end
    end

    def destroy
        session.delete(:user_id)
        flash.notice = "ログアウトしました"
        redirect_to(:root)
    end
end
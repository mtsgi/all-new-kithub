class SessionsController < ApplicationController
    def create
        @user = User.find_by_authorid(params[:authorid])
        if( @user && @user.authenticate(params[:password]) )
            session[:authorid] = @user.authorid
        else
            flash.notice = "ログインに失敗しました"
        end
    end

    def destroy
        session.delete(:authorid)
        flash.notice = "ログアウトしました"
        redirect_to(:root)
    end
end
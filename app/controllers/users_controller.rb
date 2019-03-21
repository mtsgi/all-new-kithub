class UsersController < ApplicationController
    def new
        @user = User.new()
    end

    def create
        @user = User.new(params[:user].permit(:name, :authorid, :password, :profile))
        if( @user.save )
            session[:user_id] = @user.id
            redirect_to( :root, notice: "ユーザー登録が完了しました。" )
        else
            render( "/users/new" )
        end
    end

    def index
        @users = User.all()
    end
end
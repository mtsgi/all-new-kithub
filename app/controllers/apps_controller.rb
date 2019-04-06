class AppsController < ApplicationController
    def new
        @app = App.new()
        if( !account )
            redirect_to( "/users/login" , notice: "アプリケーションの投稿にはログインが必要です。" )
        end
    end

    def create
        @app = App.new(params[:app].permit(:name, :user_id, :appid, :desc, :genre, :url))
        if( @app.save )
            redirect_to( "/" + account.authorid + "/" + @app.appid , notice: "新たなアプリを登録しました。バージョン情報を登録してください。" )
        else
            render( "/apps/new" )
        end
    end
end

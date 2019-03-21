class User < ApplicationRecord
    has_secure_password
    validates( :name, presence: { message: "名前を入力してください。" } )
    validates( :authorid, presence: { message: "作者IDを入力してください。" }, uniqueness: { message: "その作者IDはすでに登録されています。" } )
    validates( :password, presence: { on: :create, message: "パスワードを入力してください。" }, confirmation: { allow_blank: true, message: "パスワード確認が間違っています。" } )
end
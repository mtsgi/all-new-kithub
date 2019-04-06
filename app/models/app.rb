class App < ApplicationRecord
    validates( :name, presence: { message: "アプリ名を入力してください。" } )
    validates( :appid, presence: { message: "アプリIDを入力してください。" }, uniqueness: { message: "そのアプリIDはすでに登録されています。" } )
    validates( :user_id, presence: { message: "作者が登録できませんでした。" } )
end

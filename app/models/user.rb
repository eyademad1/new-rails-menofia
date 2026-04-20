class User < ApplicationRecord
    has_many :posts, foreign_key: "user_id"
    has_many :post_editors
    has_many :edited_posts, through: :post_editors, source: :post
end

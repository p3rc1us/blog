class Article < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true
    validates :author_name, format: { with: /\A[a-zA-Z\s]+\z/, message: "can only contain letters" }
    validates :co_author_name, format: { with: /\A[a-zA-Z\s]+\z/, message: "can only contain letters" }
      
end
class Article < ApplicationRecord
    validates :title, presence: true
    validates :author_name, format: { with: /\A[a-zA-Z\s]+\z/, message: "can only contain letters" }
      
end
class Article < ApplicationRecord
    validates :title, presence: true
    validates :author_name, format: { with: /\A[a-zA-Z0-9]+\z/, message: "can only contain letters and numbers" }
      
end
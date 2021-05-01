class Post < ApplicationRecord
    has_one_attached :title 
    validates :title, :content, presence: true
   
    validates :content, length: {minimum:10, maximum:50}
end

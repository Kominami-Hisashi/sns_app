class Post < ApplicationRecord
# Vaildation
validates :title, presence: true
validates :body, presence: true

#ActiveStorage
has_one_attached :image
end

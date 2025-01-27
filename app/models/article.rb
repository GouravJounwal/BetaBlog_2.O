class Article < ApplicationRecord
    validates :title, presence: true , length: { minimum: 5, maximum: 100 }
    validates :discription, presence: true , length: { minimum: 10, maximum: 1000 }

end
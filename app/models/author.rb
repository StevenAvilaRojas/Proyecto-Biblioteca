class Author < ApplicationRecord
    validates :name, presence:true
    validates :name, length: { minimum: 5 }
    validates :university, presence:true
    validates :university, length: { minimum: 4 }
end

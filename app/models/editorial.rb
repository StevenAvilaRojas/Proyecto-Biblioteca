class Editorial < ApplicationRecord
    has_many :article

    validates :name, presence:true
    validates :name, length: { minimum: 10 }
end

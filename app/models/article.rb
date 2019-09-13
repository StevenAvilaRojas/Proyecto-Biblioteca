class Article < ApplicationRecord
  belongs_to :editorial

  has_many :myarticle
  has_many :participant
  has_many :author, through: :participant 

  validates :name, presence:true
  validates :name, length: { minimum: 5 }
  validates :description, presence:true
  validates :description, length: { minimum: 10 }
end

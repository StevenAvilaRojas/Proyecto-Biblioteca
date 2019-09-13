class Myarticle < ApplicationRecord
  belongs_to :user
  belongs_to :article

  validates :user, presence:true
  validates :article, presence:true
  validates :time, presence:true
  validates :date, presence:true

  scope :search_user, ->(id){where(user_id:id)}
  scope :search_article, ->(id){where(article_id:id)}
end

class Recipe < ActiveRecord::Base
  
  belongs_to :chef
  
  validates :chef_id, presence: true
  validates :name, presence: true, length: { minimum: 2, maximum: 50 }
  validates :summary, presence: true, length: { minimum: 10, maximum: 150 }
  validates :description, presence: true, length: { minimum: 20, maximum: 500 }
end
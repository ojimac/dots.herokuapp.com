class Repo < ActiveRecord::Base
  attr_accessible :url

  validates :url         , :presence => true
  validates :forks       , :presence => true
  validates :owner       , :presence => true
  validates :homepage    , :presence => true
  validates :watchers    , :presence => true
  #validates :description , :presence => true
end

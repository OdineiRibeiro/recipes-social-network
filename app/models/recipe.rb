class Recipe < ActiveRecord::Base
  belongs_to :cuisine

  validates_presence_of :cuisine_id
  validates_associated :cuisine

  validates_presence_of :name
  validates_presence_of :yield
  validates_presence_of :preparation_time
  validates_presence_of :ingredients
  validates_presence_of :instructions
end

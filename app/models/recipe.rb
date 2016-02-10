class Recipe < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :yield
  validates_presence_of :preparation_time
  validates_presence_of :ingredients
  validates_presence_of :instructions
  validates_presence_of :cuisine_id
  validates_presence_of :difficulty_id
  validates_presence_of :description_id
  validates_presence_of :preference_id

  belongs_to :cuisine
  validates_associated :cuisine

  belongs_to :difficulty
  validates_associated :difficulty

  belongs_to :description
  validates_associated :description

  belongs_to :preference
  validates_associated :preference
end

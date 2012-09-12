class Workout < ActiveRecord::Base
  attr_accessible :activity, :minutes, :name
end

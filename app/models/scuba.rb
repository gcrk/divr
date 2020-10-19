class Scuba < ActiveRecord::Base
  belongs_to :user, :optional => true
  has_many :videos
  belongs_to :center, :optional => true
end

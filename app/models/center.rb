class Center < ActiveRecord::Base
  belongs_to :user, :optional => true
  has_many :videos
end

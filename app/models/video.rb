class Video < ActiveRecord::Base
  belongs_to :user, :optional => true
  belongs_to :dive, :optional => true
  belongs_to :center, :optional => true
end

# == Schema Information
#
# Table name: workouts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  date       :date
#  distance   :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_workouts_on_user_id  (user_id)
#

class Workout < ActiveRecord::Base
  belongs_to :user

  validates :date, presence: true
  validates :distance, presence: true,
                       numericality: { only_integer: true,
                                       greater_than: 0 }
end

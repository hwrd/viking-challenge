# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  provider   :string(255)
#  uid        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  has_many :workouts

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['name'] || ""
         user.email = auth['info']['email'] || ""
      end
    end
  end

  def self.leaderboard
    User.select('users.*, SUM(workouts.distance) AS distance, COUNT(workouts.id) AS workouts_count').joins(:workouts).group('users.id').order('distance DESC, workouts_count ASC')
  end
end

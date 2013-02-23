# == Schema Information
#
# Table name: videos
#
#  id         :integer          not null, primary key
#  Title      :string(255)
#  url        :string(255)
#  views      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Video < ActiveRecord::Base
  attr_accessible :title, :url, :views
end

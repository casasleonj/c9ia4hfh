# == Schema Information
#
# Table name: rooms
#
#  id              :integer          not null, primary key
#  title           :string
#  description     :text
#  beds            :integer
#  guests          :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  image_url       :string
#  price_per_night :float
#

class Room < ActiveRecord::Base
	validates :title, :price_per_night, presence: true
	validates :description, presence: true, length: { maximum: 400 }
	validates :beds, numericality: { only_integer: true, :greater_than_or_equal_to => 0 }, presence: true
	validates :guests, numericality: { only_integer: true, :greater_than_or_equal_to => 0 }, presence: true
	validates :image_url, presence: true
end

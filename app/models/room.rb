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
	validates :title, :description, :beds, :guests, :price_per_night, :image_url, presence: true
	validates :description, length: { maximum: 400 }
	validates_numericality_of :beds, :guests, :price_per_night

end

# == Schema Information
#
# Table name: cats
#
#  id                   :integer          not null, primary key
#  name                 :string           not null
#  age                  :integer
#  gender               :string
#  fur_color            :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  picture_file_name    :string
#  picture_content_type :string
#  picture_file_size    :integer
#  picture_updated_at   :datetime
#

class Cat < ApplicationRecord
  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  belongs_to :user
  validates_presence_of :name
  validates_inclusion_of :gender, in: %w(male female)
end

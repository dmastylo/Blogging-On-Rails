# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  category_id :integer
#  name        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Category < ActiveRecord::Base
  attr_accessible :name

  validates :name, presence: true

  has_one :parent, :class_name => "Category"
  has_many :children, :class_name => "Category"
end

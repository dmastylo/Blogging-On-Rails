# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  author     :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  post_id    :integer
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
    attr_accessible :author, :content, :email

    belongs_to :post

    validates :author, presence: true
    validates :email, presence: true
    validates :content, presence: true
    validates :post_id, presence: true
end

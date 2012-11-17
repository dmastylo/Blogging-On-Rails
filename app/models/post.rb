# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :string(255)
#  status     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
    attr_accessible :content, :status, :title

    validates :title, presence: true
    validates :content, presence: true
    validates :status, presence: true

    default_scope order: 'posts.created_at DESC'
end

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

  # attr_accessible :content, :status, :title, :tag_list

  acts_as_taggable

  validates :title, presence: true, uniqueness: true
  validates :content, presence: true
  validates :status, presence: true

  # belongs_to :category
  has_many :comments, dependent: :destroy

  default_scope order: 'posts.created_at DESC'

  scope :unpublished, where(status: "Draft")
  scope :published, where(status: "Published")

  def self.published
    Post.where(status: "Published")
  end

end

class Form < ActiveRecord::Base
  has_many :freplies
  is_impressionable
  def self.search(search)
      where("title Like ? OR content LIKE ? OR hashtag LIKE ? ", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end

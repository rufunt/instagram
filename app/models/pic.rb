class Pic < ApplicationRecord
  belongs_to :user

  has_attached_file :image#, styles: { medium: "300x", thumb: "100x" }, default_url: "/images/:style/missing.png"
  

  #has_attached_file :image, 
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  #validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

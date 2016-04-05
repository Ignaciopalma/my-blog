class Post < ActiveRecord::Base
	has_many :comments
	has_many :assets
	has_attached_file :image, 
		styles: { original: {convert_options: '-auto-orient'},
			      medium: "400x400>", 
			      thumb: "100x100>" }, 
		default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
    accepts_nested_attributes_for :assets, :allow_destroy => true
end

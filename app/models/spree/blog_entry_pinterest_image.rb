class Spree::BlogEntryPinterestImage < ActiveRecord::Base
  belongs_to :pinterest_image
  belongs_to :blog_entry
end

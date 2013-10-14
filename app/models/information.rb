class Information < ActiveRecord::Base
  # attr_accessible :title, :body
#  att_accessible :contact_id
  belongs_to :contact
  belongs_to :user
end

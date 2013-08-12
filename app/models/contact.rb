class Contact < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :gender, :age, :phone_number, :email, :area

  belongs_to :user, inverse_of: :contacts

end

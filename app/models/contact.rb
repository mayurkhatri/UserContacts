class Contact < ActiveRecord::Base
  resourcify
  attr_accessible :first_name, :last_name, :gender, :age, :phone_number, :email, :area

#  belongs_to :user, inverse_of: :contacts
  has_many :informations, :dependent => :destroy
  has_many :users, :through => :informations

  validates :first_name, :last_name, :gender, :age, :phone_number, :email, :area, presence: true
  validates :phone_number,:age, numericality: {only_integer: true}
#  validates_length_of :phone_number, :is => 10
  validates :email, uniqueness: true, on: :create
end

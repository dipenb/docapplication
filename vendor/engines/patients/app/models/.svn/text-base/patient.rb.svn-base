class Patient < ActiveRecord::Base

  acts_as_indexed :fields => [:firstname, :lastname, :gender, :ssn_number, :phone_number_1, :phone_number_2, :email, :place]

  validates :firstname, :presence => true, :uniqueness => true
  
end

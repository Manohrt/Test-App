class User < ApplicationRecord

	validates :first_name, presence: true,uniqueness: { :scope => :last_name }
	validates :gender, presence: true
	validates :age, :numericality=> true, presence: true#,:exclusion => {:in => 0..18, :message=> "Age should be larger than 18"}
	enum gender: {male: 0, female: 1}

 def full_name
    first_name + " " + last_name
  end

end

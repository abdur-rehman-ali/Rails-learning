class Stud < ApplicationRecord
    validates :name, presence:{message: 'Name to daloo'} 
    validates :age, presence:{message: 'Age to daloo'} 

    validates :name, length:{in: 2..6}

    validates :age, numericality:{only_integer:true}

    validates :email, uniqueness:true
end

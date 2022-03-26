class ValidateClass < ActiveModel::Validator
    def validate(st)
        if st.name == 'ali'
            st.errors[:base] << 'Name cannot be ali'
        end
    end
end


class Stud < ApplicationRecord
    validates :name, presence:{message: 'Name to daloo'} 
    validates :age, presence:{message: 'Age to daloo'}
    validate :check_18_plus

    validates :name, length:{in: 2..6}

    validates :age, numericality:{only_integer:true}

    validates :email, uniqueness:true

    validates :size, inclusion: { in: %w(small medium large),
        message: "%{value} is not a valid size" } ,allow_blank: true , if: :size_true?

    def size_true?
        false
    end
    # validates :size, exclusion: { in: %w(small medium large),
    #     message: "%{value} is reserved." }

    validates_with ValidateClass

    # custom validation method 
    def check_18_plus
        if age.to_i < 18
            errors.add(:age,'age is less than 18')
        end
    end

end

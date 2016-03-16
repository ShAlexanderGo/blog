class User < ActiveRecord::Base
    has_secure_password
    has_many :secposts, ->{ordering}, dependent: :destroy

    scope :ordering, -> {order(:login)}

    validates :login, presence: true, length: {maximum: 15} #"numericality" wtf? обязательные поля - логин, емаил, роль, длина не больше 25, логин не меньше 3, емайл - регекс
    #validates :password, confirmation: true,presence: {if: :new_record?}, length: {minimum: 6}, allow_blank: {unless: :new_record?}
    #validates :email, presence: true, uniqueness: {}
    validate :my_check

    before_validation :set_default_role

    def set_default_role
        self.role ||= 0
    end

    def my_check
        errors.add(:name, 'Name wrong') if firstName == 'Bob'
    end
end

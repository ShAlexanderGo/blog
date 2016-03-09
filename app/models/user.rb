class User < ActiveRecord::Base

    #has_many :secposts, ->{ordering} dependent: :destroy

    validates :login, presence: true, length: {maximum: 15} #"numericality" wtf? обязательные поля - логин, емаил, роль, длина не больше 25, логин не меньше 3, емайл - регекс
    #validates :password, confirmation: true,presence: {if: :new_record?}, length: {minimum: 6}, allow_blank: {unless: :new_record?}
    #validates :email, presence: true, uniqueness: {}
    validate :my_check
    def my_check
        errors.add(:name, 'Name wrong') if firstName == 'Bob'
    end
end

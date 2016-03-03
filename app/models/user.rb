class User < ActiveRecord::Base
    validates :login, presence: true, length: {maximum: 15} #"numericality" wtf? обязательные поля - логин, емаил, роль, длина не больше 25, логин не меньше 3, емайл - регекс
    validate :my_check
    def my_check
        errors.add(:name, 'Name wrong') if firstName == 'Bob'
    end
end

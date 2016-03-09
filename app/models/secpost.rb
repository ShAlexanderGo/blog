class Secpost < ActiveRecord::Base
  belongs_to :user
  scope :ordering, ->{order(:created_at)}
  scope :ordering_by, ->(field){order(field)}
end

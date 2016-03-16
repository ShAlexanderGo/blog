class Secpost < ActiveRecord::Base
  belongs_to :user
  scope :ordering, ->{order(:created_at)}
  scope :ordering_by, ->(field){order(field)}

  def self.create_by?(user, current_user)
    current_user && (user == current_user)
  end

  def edit_by?(current_user)
    self.class.create_by?(user, current_user)
  end
end

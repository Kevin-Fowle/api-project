class Pokemon < ActiveRecord::Base
  belongs_to :test
  has_many :users, through: :tests
end

class Pokemon < ActiveRecord::Base
  has_many :tests
  has_many :users, through: :tests

  def generate_three_digit_num
    if self.id < 10
      return "00#{self.id}"
    elsif self.id < 100
      return "0#{self.id}"
    else
      return self.id
    end
  end

end

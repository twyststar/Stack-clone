class Question < ApplicationRecord
  belongs_to :user
  has_many :answers


  def preview
    self.content[0..50] 
  end
end

class Menu < ApplicationRecord
  has_many :comments
  default_scope { order(created_at: :desc) }
  
  def self.search(search)
    if search
      Menu.where(['remark LIKE ? or movement LIKE ? or music LIKE ?' , "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Menu.all
    end
  end
end

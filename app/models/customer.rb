class Customer < ApplicationRecord
  
  
  def self.search(search)
    if search
     Customer.where(['company LIKE ?', "%#{search}%"])
    else
     #Customer.all
    end
  end
  
end

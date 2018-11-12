class Customer < ApplicationRecord
  
  # バリデーション 
  validates :company, presence: true, length: { maximum: 255 }
  validates :phone, presence: true, length: { maximum: 255 }
  validates :server, presence: true, length: { maximum: 255 }
  validates :remark, presence: true, length: { maximum: 255 }

  def self.search(search)
    
    #scope :search_like, -> search { where('company like ?', "%#{search}%") if search.present? }
    
    if search
     #logger.debug("個別に入りました")
     Customer.where(['company LIKE ?', "%#{search}%"])
     

      
    else
    #logger.debug("Customer.allに入りました")
     #Customer.all
    end
  end
  
end

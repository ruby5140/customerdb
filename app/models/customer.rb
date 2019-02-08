class Customer < ApplicationRecord
  
  # バリデーション 
  #validates :company, presence: true, length: { maximum: 255 }
  #validates :company2, presence: true, length: { maximum: 255 }
  #validates :company3, presence: true, length: { maximum: 255 }
  #validates :company4, presence: true, length: { maximum: 255 }
  #validates :phone, presence: true, length: { maximum: 255 }
  #validates :server, presence: true, length: { maximum: 255 }
  #validates :remark, presence: true, length: { maximum: 255 }

def self.search(search)
    #if search
       #Customer.where(['company LIKE ?', "%#{search}%"])
       #Customer.where(kind: 0).where(name: ‘yamada’)
        Customer.where(['company LIKE ?', "%#{search}%"])
    #else
      #Customer.all
    #end
end
end
require 'rails_helper'

RSpec.describe Customer, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  
  describe Customer do
    it 'is valid with company' do
      customer = Customer.new(company: 'test' )
      expect(customer).to eq customer
    end
  end
end

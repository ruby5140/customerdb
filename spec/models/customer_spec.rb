require 'rails_helper'

RSpec.describe Customer, type: :test do
  #pending "add some examples to (or delete) #{__FILE__}"
  
  describe Customer do
    let(:customer) { create(:customer) }
    
    it 'is valid with company' do
      #customer = create(:customer)
      expect(customer.save).to be_truthy
    end
  end
end

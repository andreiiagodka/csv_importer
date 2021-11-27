require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:supplier).class_name('Supplier').with_foreign_key('supplier_code') } 
  end
end
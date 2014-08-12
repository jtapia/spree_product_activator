# encoding: UTF-8
require 'spec_helper'

describe 'Product Details' do
  stub_authorization!

  before do
    create(:product, :name => 'Test Product', :sku => 'A100',
      :description => 'lorem ipsum', :available_on => Date.today - 1.month)
    create(:product, :name => 'Test Product 2', :sku => 'A100',
      :description => 'lorem ipsum', :available_on => Date.today - 1.month)
    visit spree.admin_products_path
    within_row(1) { click_icon :edit }
    click_link 'Product Details'
  end

  context 'editing a product' do
    it 'should list the product details' do
      find('input#product_inactive').value.should == '1'
    end

    it 'should list the product without inactive products' do
      find('input#product_inactive').set true
      click_button "Update"

      Spree::Product.count.should == 2
      Spree::Product.without_inactive.count.should == 1
    end

    it 'should list the product with inactive products' do
      find('input#product_inactive').set false
      click_button "Update"

      Spree::Product.count.should == 2
      Spree::Product.without_inactive.count.should == 2
    end
  end
end
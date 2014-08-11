Spree::Core::Search::Base.class_eval do

  # Redefine method to add a properly scope to don't show inactive products
  def retrieve_products
    super
    @products = @products.without_inactive.page(curr_page).per(per_page)
  end

end

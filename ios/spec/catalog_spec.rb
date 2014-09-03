require_relative 'helper_spec'
require_relative '../pages/catalog'

describe 'Catalog' do

  before(:each) do
    @page = Page.new(@driver)
    @catalog = Catalog.new(@driver)
  end

  it 'assert each menu item is displayed', :smoke do
    @catalog.page_title_displayed?
    @catalog.ui_elements do |ui_element|
      expect(@catalog.ui_element_displayed?(ui_element)).to be_truthy
    end
  end

  it 'click each menu item', :regression do
    @catalog.ui_elements do |ui_element| 
      expect(@catalog.page_title_displayed?).to be_truthy
      @catalog.click_ui_element(ui_element)
      expect(@catalog.page_title_displayed?).to be_falsey
      @page.click_back
    end
  end

end # Catalog

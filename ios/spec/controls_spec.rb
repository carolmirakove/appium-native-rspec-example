require_relative 'helper_spec'
require_relative '../pages/page'
require_relative '../pages/catalog'
require_relative '../pages/controls'

describe 'Controls' do

  before(:each) do
    @page = Page.new(@driver)
    @catalog = Catalog.new(@driver)
    @controls = Controls.new(@driver)
  end

  def click_through_from_catalog
    expect(@catalog.page_title_displayed?).to be_truthy
    @catalog.click_controls
    expect(@controls.page_title_displayed?).to be_truthy
  end

  it 'assert each controller is displayed', :smoke do
    click_through_from_catalog
    @controls.ui_elements_top do |ui_element| 
      expect(@page.is_displayed?(ui_element)).to be_truthy
    end
    @controls.scroll_to_mid
    @controls.ui_elements_mid do |ui_element| 
      expect(@page.is_displayed?(ui_element)).to be_truthy
    end
    @controls.scroll_to_bottom
    @controls.ui_elements_bottom do |ui_element| 
      expect(@page.is_displayed?(ui_element)).to be_truthy
    end
  end

  it 'toggle switch', :regression do
    click_through_from_catalog
    expect(@controls.get_standard_switch_value).to eq 0
    @controls.click_standard_switch
    expect(@controls.get_standard_switch_value).to eq 1
  end

end # Controls

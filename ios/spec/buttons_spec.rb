require_relative 'helper_spec'
require_relative '../pages/catalog'
require_relative '../pages/buttons'

describe 'Buttons' do

  before(:each) do
    @catalog = Catalog.new(@driver)
    @buttons = Buttons.new(@driver)
  end

  it 'assert gray, image, rounded displayed', :smoke do
    expect(@catalog.page_title_displayed?).to be_truthy
    @catalog.click_buttons
    expect(@buttons.page_title_displayed?).to be_truthy
    expect(@buttons.gray_displayed?).to be_truthy
    expect(@buttons.image_displayed?).to be_truthy
    expect(@buttons.rounded_displayed?).to be_truthy
  end

end # Buttons

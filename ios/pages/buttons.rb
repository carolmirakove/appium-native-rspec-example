require_relative 'page'

class Buttons < Page
  PAGE_TITLE_LOCATOR = { name: 'Buttons' }
  GRAY_BUTTON_LOCATOR = { name: 'Gray' }
  IMAGE_BUTTON_LOCATOR = { name: 'Right pointing arrow' }
  ROUNDED_BUTTON_LOCATOR = { name: 'Rounded' }

  def page_title_displayed?
    is_displayed? PAGE_TITLE_LOCATOR
  end
  
  def gray_displayed?
    is_displayed? GRAY_BUTTON_LOCATOR
  end

  def image_displayed?
    is_displayed? IMAGE_BUTTON_LOCATOR
  end

  def rounded_displayed?
    is_displayed? ROUNDED_BUTTON_LOCATOR
  end 

end # Buttons

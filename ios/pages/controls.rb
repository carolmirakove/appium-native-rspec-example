require_relative 'page'

class Controls < Page

  PAGE_TITLE_LOCATOR = { name: 'Controls' }
  STANDARD_SWITCH_LOCATOR = { id: 'StandardSwitch' }
  STANDARD_SLIDER_LOCATOR = { id: 'StandardSlider' }
  CUSTOM_SLIDER_LOCATOR = { id: 'CustomSlider' }
  PAGE_INDICATOR_TEXT_LOCATOR = { name: 'UIPageControl' }
  PAGE_INDICATOR_LOCATOR = { class_name: 'UIAPageIndicator' }
  ACTIVITY_INDICATOR_LOCATOR = { class_name: 'UIAActivityIndicator' }
  PROGRESS_INDICATOR_LOCATOR = { class_name: 'UIAProgressIndicator' }
  UISTEPPER_INCREMENT_LOCATOR = { name: 'Increment' }
  UISTEPPER_DECREMENT_LOCATOR = { name: 'Decrement' }

# assert elements are displayed

  def page_title_displayed?
    is_displayed? PAGE_TITLE_LOCATOR
  end

  def ui_elements_top
    yield STANDARD_SWITCH_LOCATOR
    yield STANDARD_SLIDER_LOCATOR
    yield CUSTOM_SLIDER_LOCATOR
  end

  def ui_elements_mid
    yield PAGE_INDICATOR_LOCATOR
    yield ACTIVITY_INDICATOR_LOCATOR
  end

  def ui_elements_bottom
    yield PROGRESS_INDICATOR_LOCATOR
    yield UISTEPPER_INCREMENT_LOCATOR
    yield UISTEPPER_DECREMENT_LOCATOR
  end

# navigate screen

  def scroll_to_mid
    scroll_to PAGE_INDICATOR_TEXT_LOCATOR
  end

  def scroll_to_bottom
    scroll_to PROGRESS_INDICATOR_LOCATOR
  end

# get value of elements

  def get_standard_switch_value
    get_value STANDARD_SWITCH_LOCATOR
  end

# interact with elements

  def click_standard_switch
    click STANDARD_SWITCH_LOCATOR
  end

end # Controls

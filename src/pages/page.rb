# frozen_string_literal: true

# Base Class that every page should will be derived
# this is the only place to interact to the Appium
class Page
  def initialize(driver)
    @driver = driver
  end

  def wait_until(seconds = 5)
    Selenium::WebDriver::Wait.new(timeout: seconds).until { yield }
  end

  def find(locator)
    wait_until { @driver.find_element locator }
  end

  def enter(text, locator)
    find(locator).send_keys text
  end

  def click(locator)
    find(locator).click
  end

  def click_back
    @driver.back
  end

  def submit(locator)
    find(locator).submit
  end

  def get_value(locator)
    find(locator).value
  end

  def get_text(locator)
    find(locator).text
  end

  def text_include?(text, locator)
    find(locator).text.include?(text)
  end

  def displayed?(locator)
    find(locator).displayed?
  rescue Selenium::WebDriver::Error::NoSuchElementError
    false
  end

  def scroll_to(locator)
    element = @driver.find_element(locator)
    @driver.execute_script 'mobile: scrollTo', element: element.ref
  end

  def background_app
    @driver.background_app
  end
end

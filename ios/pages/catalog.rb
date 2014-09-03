require_relative 'page'

class Catalog < Page

  PAGE_TITLE_LOCATOR = { name: 'UICatalog' }
  BUTTONS_CATALOG_LOCATOR = { id: 'ButtonsTitle' }
  CONTROLS_CATALOG_LOCATOR = { id: 'ControlsTitle' }
  TEXTFIELDS_CATALOG_LOCATOR = { id: 'TextFieldTitle' }
  SEARCHBAR_CATALOG_LOCATOR = { id: 'SearchBarTitle' }
  TEXTVIEW_CATALOG_LOCATOR = { id: 'TextViewTitle' }
  PICKER_CATALOG_LOCATOR = { id: 'PickerTitle' }
  IMAGES_CATALOG_LOCATOR = { id: 'ImagesTitle' }
  WEB_CATALOG_LOCATOR = { id: 'WebTitle' }
  SEGMENT_CATALOG_LOCATOR = { id: 'SegmentTitle' }
  TOOLBAR_CATALOG_LOCATOR = { id: 'ToolbarTitle' }
  ALERT_CATALOG_LOCATOR = { id: 'AlertTitle' }
  TRANSITIONS_CATALOG_LOCATOR = { id: 'TransitionsTitle' } 

  def page_title_displayed?
    is_displayed? PAGE_TITLE_LOCATOR
  end

  def ui_elements
    yield BUTTONS_CATALOG_LOCATOR
    yield CONTROLS_CATALOG_LOCATOR
    yield TEXTFIELDS_CATALOG_LOCATOR
    yield SEARCHBAR_CATALOG_LOCATOR
    yield TEXTVIEW_CATALOG_LOCATOR
    yield PICKER_CATALOG_LOCATOR
    yield IMAGES_CATALOG_LOCATOR
    yield WEB_CATALOG_LOCATOR
    yield SEGMENT_CATALOG_LOCATOR
    yield TOOLBAR_CATALOG_LOCATOR
    yield ALERT_CATALOG_LOCATOR
    yield TRANSITIONS_CATALOG_LOCATOR
  end

  def ui_element_displayed?(ui_element)
    is_displayed? ui_element
  end

  def click_ui_element(ui_element)
    click ui_element
  end

  def click_buttons
    click BUTTONS_CATALOG_LOCATOR
  end

  def click_controls
    click CONTROLS_CATALOG_LOCATOR
  end

end # Catalog

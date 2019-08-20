# frozen_string_literal: true

require_relative 'helper_spec'

context 'Homepage' do
  describe 'opens' do
    before(:each) do
      @page = Homepage.new(@driver)
    end

    it 'assert that the login form present', :smoke do
      expect(@page.page_displayed?).to be true
    end
  end
end

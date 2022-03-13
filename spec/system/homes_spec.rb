# frozen_string_literal: true

require 'rails_helper'
RSpec.describe 'Homes', js: true, type: :system do
  it '#index' do
    visit '/'
    expect(page).to have_content 'WellBeへようこそ'
  end
end

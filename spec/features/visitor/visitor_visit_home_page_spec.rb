require 'rails_helper'

feature 'Visitor visits Cozinha de Guerrilha home page' do
  scenario 'successfully' do
    visit root_path
    expect(page).to have_content('Cozinha de Guerrilha')
  end
end

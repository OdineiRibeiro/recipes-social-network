require 'rails_helper'

feature 'Visitor visits new_recipe_path' do
  scenario 'successfully' do
    visit new_recipe_path
    expect(page).to have_content('Nome')
    expect(page).to have_content('Rendimento')
    expect(page).to have_content('Tempo de preparo')
    expect(page).to have_content('Ingredientes')
    expect(page).to have_content('Modo de preparo')
    expect(page).to have_content('Cozinha')
    expect(page).to have_content('Dificuldade')
    expect(page).to have_content('Tipo')
    expect(page).to have_content('Preferência')
    expect(page).to have_content('Foto')

  end
end

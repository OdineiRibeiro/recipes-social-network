require 'rails_helper'

feature 'Visitor create and visits recipe detail' do
  scenario 'successfully' do

    cuisine = Cuisine.create(name: 'Brasileira')
    difficulty = Difficulty.create(name: 'Fácil')
    description = Description.create(name: 'Entrada')
    preference = Preference.create(name: 'Normal')

    recipe = Recipe.create(name: 'Receita teste',
                           yield: 4,
                           preparation_time: 45,
                           ingredients: 'Ingredientes da receita',
                           instructions: 'Instruções da receita',
                           cuisine: cuisine,
                           difficulty: difficulty,
                           description: description,
                           preference: preference,
                           avatar: Rack::Test::UploadedFile.new(
                                      File.open(
                                        File.join(
                                          Rails.root, '/spec/support/images/image.jpg'))))

    visit root_path

    click_on 'Mostrar'

    expect(page).to have_content recipe.name
    expect(page).to have_content recipe.yield
    expect(page).to have_content recipe.preparation_time
    expect(page).to have_content recipe.ingredients
    expect(page).to have_content recipe.instructions
    expect(page).to have_content cuisine.name
    expect(page).to have_content difficulty.name
    expect(page).to have_content description.name
    expect(page).to have_content preference.name
    expect(page).to have_css("img[src*='image.jpg']")

  end
end

FactoryGirl.define do
  factory :recipe do
    name 'Receita',
    yield 5,
    preparation_time 45,
    ingredients 'Ingredientes da receita',
    instructions 'Modo de preparo',
    cuisine cuisine,
    difficulty difficulty,
    description description,
    preference preference
  end
end

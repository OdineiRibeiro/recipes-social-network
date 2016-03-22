# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
cuisine = Cuisine.create(name: 'Brasileira')
cuisine_2 = Cuisine.create(name: 'Portuguesa')
cuisine_3 = Cuisine.create(name: 'Alemã')

description = Description.create(name: 'Entrada')
description_2 = Description.create(name: 'Prato principal')
description_3 = Description.create(name: 'Sobremesa')

difficulty = Difficulty.create(name: 'Fácil')
difficulty_2 = Difficulty.create(name: 'Médio')
difficulty_3 = Difficulty.create(name: 'Difícil')

preference = Preference.create(name: 'Carnes')
preference_2 = Preference.create(name: 'Salada')
preference_3 = Preference.create(name: 'Lanche')

user = User.create(email: 'user@user.com',
                   password: '123456789')

admin = User.create(email: 'admin@admin.com',
                    password: 'admin1234',
                    admin: true)

Recipe.create(name: 'Carne bonita para a foto',
              yield: 5,
              preparation_time: 60,
              ingredients: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              instructions: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                             Integer nibh sem, viverra semper malesuada vitae, placerat a justo.
                             Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                             Maecenas non quam sit amet nisl sagittis semper sed feugiat eros.
                             Sed id imperdiet quam. ',
              cuisine_id: cuisine.id,
              difficulty_id: difficulty.id,
              description_id: description.id,
              preference_id: preference.id,
              avatar: open('spec/support/images/carne_com_vegetais.jpg'),
              user_id: user.id)

Recipe.create(name: 'Hamburguer',
              yield: 1,
              preparation_time: 30,
              ingredients: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              instructions: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                             Integer nibh sem, viverra semper malesuada vitae, placerat a justo.
                             Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                             Maecenas non quam sit amet nisl sagittis semper sed feugiat eros.
                             Sed id imperdiet quam. ',
              cuisine_id: cuisine.id,
              difficulty_id: difficulty.id,
              description_id: description.id,
              preference_id: preference.id,
              avatar: open('spec/support/images/hamburguer.jpg'),
              user_id: admin.id)

Recipe.create(name:'Pão do nordeste',
              yield: 10,
              preparation_time: 30,
              ingredients: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              instructions: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                             Integer nibh sem, viverra semper malesuada vitae, placerat a justo.
                             Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                             Maecenas non quam sit amet nisl sagittis semper sed feugiat eros.
                             Sed id imperdiet quam. ',
              cuisine_id: cuisine_2.id,
              difficulty_id: difficulty_2.id,
              description_id: description_2.id,
              preference_id: preference_2.id,
              avatar: open('spec/support/images/pao.jpg'),
              user_id: user.id)

Recipe.create(name:'Salada verão',
              yield: 5,
              preparation_time: 15,
              ingredients: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              instructions: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                             Integer nibh sem, viverra semper malesuada vitae, placerat a justo.
                             Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                             Maecenas non quam sit amet nisl sagittis semper sed feugiat eros.
                             Sed id imperdiet quam. ',
              cuisine_id: cuisine_2.id,
              difficulty_id: difficulty_2.id,
              description_id: description_2.id,
              preference_id: preference_2.id,
              avatar: open('spec/support/images/salada_verao.jpg'),
              user_id: admin.id)

Recipe.create(name: 'Salada sem verão',
              yield: 5,
              preparation_time: 10,
              ingredients: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              instructions: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                             Integer nibh sem, viverra semper malesuada vitae, placerat a justo.
                             Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                             Maecenas non quam sit amet nisl sagittis semper sed feugiat eros.
                             Sed id imperdiet quam. ',
              cuisine_id: cuisine_3.id,
              difficulty_id: difficulty_3.id,
              description_id: description_3.id,
              preference_id: preference_3.id,
              avatar: open('spec/support/images/salada.jpg'),
              user_id: user.id)

Recipe.create(name:'Sushi de cebola',
              yield: 1,
              preparation_time: 120,
              ingredients: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              instructions: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                             Integer nibh sem, viverra semper malesuada vitae, placerat a justo.
                             Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                             Maecenas non quam sit amet nisl sagittis semper sed feugiat eros.
                             Sed id imperdiet quam. ',
              cuisine_id: cuisine_3.id,
              difficulty_id: difficulty_3.id,
              description_id: description_3.id,
              preference_id: preference_3.id,
              avatar: open('spec/support/images/sushi_de_cebola.jpg'),
              user_id: admin.id)

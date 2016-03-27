# README

## Rede social de receitas

Este projeto foi desenvolvido durante um curso na [Campus Code](http://www.campuscode.com.br/).

Refere-se a uma rede social de receitas. Até o momento, possui as seguintes funcionalidades:

- Criar e editar usuários usando a gem [Devise](https://github.com/plataformatec/devise)

- Criar, editar e deletar receitas sendo que os dois ultimos só podem ser feitos pelo usuário que cadastrou a receita.

- Upload de fotos para ilustrar a receita usando a gem [CarrierWave](https://github.com/carrierwaveuploader/carrierwave)

- Busca de receitas por tipo, cozinha e preferencias de pratos.


## Instalação

- Clone o projeto:

```
  git clone https://github.com/OdineiRibeiro/recipes-social-network.git
```

- Abra o terminal na pasta criada e digite o comando abaixo para instalar as dependências do projeto

```ruby
  bundle install
```
- Em seguida, digite o comando a seguir para criar o banco de dados e suas tabelas

```ruby
  rake db:reset
```
<sup>*Agradeço ao [Pery Lemke](https://github.com/perylemke) por me avisar que o comando acima estava errado :D*</sup>

- Após tudo configurado e banco de dadis migrado. No terminal, inicie o servidor rails com o comando abaixo

```ruby
  rails server
```

## Usuários do sistema

- Usuário comum: user@user.com/123456789
- Usuário administrador: admin@admin.com/admin1234

## Mais informações

Para mais informações entre em contato comigo através do [GitHub](https://github.com/OdineiRibeiro) ou através do email odinei.ribeiro@live.com!

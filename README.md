
1rails new store1
2rails g scaffold Product name description:text image:string price:decimal
3rails db:migrate
4 rails s
  http://localhost:3000/products

5 app> views > products > _form.html.erb
  <%= form.text_area :description, row:10, cols:50 %>

6 db > seed.rb
Product.create(name: "C++ for Dummies", description: "ez to understand!", image: "c++.jpeg", price: 99.99)
Product.create(name: "Python Cookbook", description: "cook python? what?", image: "python.jpeg", price: 19.99)

  rails db:seed

7 app > asset > image
  c++.jpeg
  python.jpeg

8

9 app > views > layout> application.html.erb
  app > views > products> index.html.erb

10 app> models > product.rb

11 rails g controller Shopper index

12 config > routes.rb
  root "shopper#index", as: 'root'

13 app > controller > ShopperController
   app > views > shopper > index.erb
   app > assets > stylesheets > shopper.SCSS

14 app > views > layout> application.html.erb

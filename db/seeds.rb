# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: "Minna no Nihongo Honyaku: English Translation and Grammatical Notes (English and Japanese Edition)",
          description: "This book is entirely in Japanese. No romanization. This is great as it offers you exposure to reading Japanese and quickens your ability to remember both the hiragana and katakana characters. Do ensure that you purchase the translation as well. You will need the translation as you won't be able to understand this book without that.",
          image: 'japan1.jpg', price: 15.99)

Product.create(name: "Wolf in the Snow",
          description: "K-Gr 2—In this mostly wordless picture book, a girl gets lost in a snowstorm while walking home from school. At the same time, a wolf pup gets separated from its pack. The girl discovers the pup and carries it through dangerous and icy terrain to reconnect with its pack, and the wolves assist the girl by howling to attract her searching family. Cordell's artistic approach is a little more free-form than in his past titles. It works well in depicting the twisting trees in the snowstorm but is more challenging to pull off with the characterization of the girl. Yet he succeeds. Only her eyes are visible in her large red triangular parka, with a scarf across her mouth and nose, as she trudges through the snow; there is so much emotion in her eyes that viewers know all that they need to know about this almost comically bundled, shapeless figure. Cordell's landscapes do a wonderful job showing the vastness and desperation of the girl's journey, his blended watercolors of the snow and trees adding eloquence to the experience. VERDICT A heartwarming adventure about helping others, best shared one-on-one to pore over the engaging images.—Peter Blenski, Greenfield Public Library, WI",
          image: 'wolf.jpg', price: 39.99)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
Category.destroy_all
User.destroy_all
Reality.destroy_all
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
if Rails.env.development? || Rails.env.production?
  CategorySeeder.seed!
end
reality = Reality.all
category = Category.all
user1 = User.create!(email: 'philipormorgan@gmail.com', username: 'Philip', password: '123456', admin: true)
philosophy = category[0]
love = category[1]
wisdom = category[2]
work = category[3]
traveling = category[4]
tv = category[5]
food = category[6]
anecdotes = category[7]
literature = category[8]
history = category[9]
developing = category[10]
music = category[11]
politics = category[12]
random = category[13]
Reality.create!(check: 'My philosophy is: if you can not have fun, there is no sense in doing it-Paul Walker', user: user1, category: philosophy )
Reality.create!(check: 'Philosophy begins in wonder-Plato', user: user1, category: philosophy )
Reality.create!(check: 'Enjoy life, this is not a rehearsal.', user: user1, category: philosophy )
Reality.create!(check: 'Every day may not be good, but there is something good in every day.', user: user1, category: philosophy )
Reality.create!(check: 'Write a wise saying and your name will live forever-anonymous', user: user1, category: philosophy )
Reality.create!(check: 'He who dies with the most toys is, nonetheless, still dead.-anonymous', user: user1, category: philosophy )
Reality.create!(check: 'Life is about making dreams come true', user: user1, category: philosophy )
Reality.create!(check: 'Bad habits are like a comfortable bed, easy to get into, but hard to get out of.-anonymous', user: user1, category: philosophy )
Reality.create!(check: 'The positive thinker sees the invisible, feels the intangible, and achieves the impossible.-anonymous', user: user1, category: philosophy )
Reality.create!(check: 'A real leader faces the music, even when he doesnt like the tune.-anonymous', user: user1, category: philosophy )

Reality.create!(check: 'Look beyond the naked eye and you will see the beauty of ones soul, and the true essence of who they really are.', user: user1, category: love )
Reality.create!(check: 'Loving someone and not being loved in return, worst thing in the world.', user: user1, category: love )
Reality.create!(check: 'Love develops through friendship. -Helen Araromi ', user: user1, category: love )
Reality.create!(check: 'The best way to not get your heart broken, is pretending you do not have one.-Charlie Sheen', user: user1, category: love )
Reality.create!(check: 'We fall in love by chance, we stay in love by choice.-anonymous', user: user1, category: love )
Reality.create!(check: 'If you want to be loved, be lovable.-Ovid', user: user1, category: love )


Reality.create!(check: 'Talent is God given. Be humble. Fame is man-given. Be grateful. Conceit is self-given. Be careful.-John Wooden', user: user1, category: wisdom )
Reality.create!(check: 'It is not what you look at that matters, it is what you see.-Henry David Thoreau', user: user1, category: wisdom )
Reality.create!(check: 'The only true wisdom is in knowing you know nothing.-Socrates', user: user1, category: wisdom )
Reality.create!(check: 'Better late than never, but never late is better', user: user1, category: wisdom )
Reality.create!(check: 'Ignorance can be educated. Crazy can be medicated. But there is no cure for stupid.-anonymous', user: user1, category: wisdom )
Reality.create!(check: 'A lot of people have gone further than they thought they could because someone else thought they could.', user: user1, category: wisdom )
Reality.create!(check: 'Those who live in the past limit their future.-anonymous', user: user1, category: wisdom )
Reality.create!(check: 'Your future is create!d by what you do today not tomorrow.', user: user1, category: wisdom )
Reality.create!(check: 'Never let the fear of striking out keep you from playing the game.-anonymous', user: user1, category: wisdom )



Reality.create!(check: 'All the talent in the world will not take you anywhere without your teammates. ', user: user1, category: work )
Reality.create!(check: 'One who refuses to seek the advice of others will eventually be led to a path of ruin. A mentor helps you to perceive your own weaknesses and confront them with courage. The bond between mentor and protege enables us to stay true to our chosen path until the very end.-anonymous', user: user1, category: work )
Reality.create!(check: 'It is Friday...any plan of being a productive member of society is officially thrown out the window.', user: user1, category: work )
Reality.create!(check: 'Things people say: It is Friday! Things self-employed people say: It is Friday?', user: user1, category: work )
Reality.create!(check: 'What is amazing is, if young people understood how doing well in school makes the rest of their life so much interesting, they would be more motivated. It is so far away in time that they can not appreciate what it means for their whole life.-Bill Gates', user: user1, category: work )
Reality.create!(check: 'I think you accidentally learn things in high school that turn out to be life lessons when you are able to step back a bit and study them in more depth.-Megan Fox', user: user1, category: work )
Reality.create!(check: 'A man who has never gone to school may steal from a freight car; but if he has a university education, he may steal the whole railroad. -Theodore Roosevelt', user: user1, category: work )



Reality.create!(check: 'Italy is the msot beautiful country, especially Piemonte! The Italian alps are everywhere!', user: user1, category: traveling )
Reality.create!(check: 'The world is yours', user: user1, category: traveling )
Reality.create!(check: 'I have not been everywhere, but it is on my list.-Susan Sontag', user: user1, category: traveling )
Reality.create!(check: 'And then i realized, adventures are the best way to learn.', user: user1, category: traveling )
Reality.create!(check: 'Go somewhere new!', user: user1, category: traveling )
Reality.create!(check: 'Wanderlust- (n.) The irresistable, uncurable desire to travel or wander', user: user1, category: traveling )
Reality.create!(check: 'Every hundred feet the world changes.-Robert Bolano', user: user1, category: traveling )


Reality.create!(check: 'Reality TV is set up to make people entertaining. A good person with values and principles is not good television. -Ronda Rousey', user: user1, category: tv )
Reality.create!(check: 'Television is not inherently good or bad. You go to a bookstore, there are how many thousands of books, but how many of those do you want? Five? Televisions the same way. If you are going to show people stuff, television is the way to go. Words and pictures show things.-Bill Nye', user: user1, category: tv )
Reality.create!(check: 'Valentines Day Is Coming? Aw Crap, I Forgot To Get A Girlfriend Again! - Fry - Futurama', user: user1, category: tv )
Reality.create!(check: 'Your mother was worried sick and I was here drinking beer. -Randy Marsh - South Park', user: user1, category: tv )


Reality.create!(check: 'Food is our common ground, a universal experience.', user: user1, category: food )
Reality.create!(check: 'It is coarse and ungraceful to throw food into the mouth as you would toss hay into a barn with a pitchfork.', user: user1, category: food )
Reality.create!(check: 'Let your food be your medicine, and your medicine be your food.-Hippocrates', user: user1, category: food )
Reality.create!(check: 'It is illegal to give someone food in which has been found a dead mouse or weasel.-Ancient Irish Law', user: user1, category: food )
Reality.create!(check: 'Donuts. Is there anything they can not do?- Homer Simpson', user: user1, category: food )
Reality.create!(check: 'Who was the first person to look at a cow and say, "I think I will squeeze these dangly things here and drink whatever comes out?"- Anonymous', user: user1, category: food )

Reality.create!(check: 'My husband was waterskiing when he fell into the river. As the boat  circled to pick him up, he noticed a hunter sitting in a duck boat in the reeds. My husband put his hands in the air and joked, “Don’t shoot!”The hunter responded, “Do not quack.”', user: user1, category: anecdotes )
Reality.create!(check: 'I’d never had surgery, and I was nervous. “This is a very simple, noninvasive procedure,” the anesthesiologist reassured me. I felt better, until … “Heck,” he continued, “you have  a better chance of dying from the  anesthesia than the surgery itself.”', user: user1, category: anecdotes )
Reality.create!(check: 'My friend, an intern, was given $50 to get the chairman of the bank some lunch. Told to get himself something, he bought a shirt.', user: user1, category: anecdotes )
Reality.create!(check: 'When my three-year-old was told  to pee in a cup at the doctor’s office, he unexpectedly got nervous. With  a shaking voice, he asked, “Do I have to drink it?”', user: user1, category: anecdotes )
Reality.create!(check: 'While I was out to lunch, my coworker answered my phone and told the caller that I would be back  in 20 minutes. The woman asked,  “Is that 20 minutes Central Standard Time?”', user: user1, category: anecdotes )
Reality.create!(check: 'We were inspecting several lots of grenades. While everyone was concentrating on the task at hand, I held up a spare pin and asked, “Has anyone seen my grenade?”', user: user1, category: anecdotes )


Reality.create!(check: 'A book ... unlike a television program, moving picture or any other modern means of communication ... can wait for years, yet be available at any moment when it happens to be needed.- Joseph Wood Krutch', user: user1, category: literature )
Reality.create!(check: '“How wonderful it is that nobody need wait a single moment before starting to improve the world.”-Anne Frank', user: user1, category: literature )
Reality.create!(check: '“Fight till the last gasp.”-William Shakespeare', user: user1, category: literature )
Reality.create!(check: '“Get busy living or get busy dying.”-The Shawshank Redemption (Stephen King)', user: user1, category: literature )
Reality.create!(check: '“As long as the heart beats, as long as body and soul keep together, I cannot admit that any creature endowed with a will has need to despair of life.”Journey to the Center of the Earth (Jules Verne)', user: user1, category: literature )


Reality.create!(check: 'A people without the knowledge of their past history, origin and culture is like a tree without roots.-Marcus Garvey', user: user1, category: history )
Reality.create!(check: '“History will be kind to me for I intend to write it.” ― Winston S. Churchill', user: user1, category: history )
Reality.create!(check: '“The most effective way to destroy people is to deny and obliterate their own understanding of their history.” ― George Orwell', user: user1, category: history )
Reality.create!(check: '“History does not repeat itself, but it does rhyme.” ― Mark Twain', user: user1, category: history )
Reality.create!(check: 'History never looks like history when you are living through it. ~John W. Gardner', user: user1, category: history )
Reality.create!(check: 'Each time history repeats itself, the price goes up. ~Author Unknown', user: user1, category: history )

Reality.create!(check: 'Press any key... no, no, no, NOT THAT ONE', user: user1, category: developing )
Reality.create!(check: 'What goes up must come down. Ask any system administrator.', user: user1, category: developing )
Reality.create!(check: '“Great web design without functionality is like a sports car with no engine.”― Paul Cookson', user: user1, category: developing )
Reality.create!(check: '“If debugging is the process of removing software bugs, then programming must be the process of putting them in.”– Edsger Dijkstra (Dutch computer scientist)', user: user1, category: developing )
Reality.create!(check: ' “One of my most productive days was throwing away 1000 lines of code.”– Ken Thompson (computer scientist, early developer of UNIX OS)', user: user1, category: developing )

Reality.create!(check: 'Do not gain the world and lose your soul; wisdom is better than silver or gold.-Bob Marley', user: user1, category: music )
Reality.create!(check: 'How can the sky be the limit when there are foot steps on the moon-Logic', user: user1, category: music )
Reality.create!(check: 'Speak from your heart, and never compromise whats real-Childish Gambino', user: user1, category: music )
Reality.create!(check: 'The truth is you do not know what is going to happen tomorrow. Life is a crazy ride, and nothing is guaranteed.-Eminem', user: user1, category: music )
Reality.create!(check: '“Long you live and high youll fly, and smiles youll give, tears youll cry and all you touch and all you see is all your life will ever be” ― Pink Floyd', user: user1, category: music )


Reality.create!(check: 'If all economists were laid end to end, they would not reach a conclusion.', user: user1, category: politics )
Reality.create!(check: 'Those who are too smart to engage in politics are punished by being governed by those who are dumber. ~Plato', user: user1, category: politics )
Reality.create!(check: 'Why pay money to have your family tree traced; go into politics and your opponents will do it for you. ~Author Unknown', user: user1, category: politics )
Reality.create!(check: 'The problem with political jokes is they get elected. ~Anonymous', user: user1, category: politics )
Reality.create!(check: 'Politicians and diapers have one thing in common. They should both be changed regularly and for the same reason. ~Anonymous', user: user1, category: politics )

Reality.create!(check: 'Horses just naturally have mohawk haircuts.', user: user1, category: random )
Reality.create!(check: 'How can you tell when sour cream goes bad?', user: user1, category: random )
Reality.create!(check: 'Madness takes its toll. Please have exact change.', user: user1, category: random )
Reality.create!(check: 'There is no future in time travel.', user: user1, category: random )
Reality.create!(check: 'Where would we be without rhetorical questions?', user: user1, category: random )

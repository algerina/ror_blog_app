# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

first_user = User.create(name: 'Smoke', photo: 'https://images.unsplash.com/photo-1636315531684-441e88d838b3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80', bio: 'Like stars upon some gloomy grove')
third_user = User.create(name: 'Fire', photo: 'https://images.unsplash.com/photo-1650482713537-8de547ea7a16?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80', bio: ' In the smoke and hazy twilight
Neptune raised his trident')
second_user = User.create(name: 'Shadow', photo: 'https://images.unsplash.com/photo-1481754100984-dbae571fe45b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80', bio: 'From your imaginaation')

second_post = Post.create(author_id: 1, title: 'Stary fire', text: 'Mystic as as a stary night in Van Goghs painting')

third_post = Post.create(author_id: 2, title: 'About fire', text: 'The most powerful weapon on earth is the human soul on fire')
fourth_post = Post.create(author_id: 3, title: 'About light', text: 'Darkness cannot drive out darkness: only light can do that.')




user1 = User.create(name: 'Sylvia', photo: 'https://images.pexels.com/photos/3449090/pexels-photo-3449090.jpeg', bio: 'Artist from Dreamland')
user2 = User.create(name: 'Neruda', photo: 'https://images.pexels.com/photos/35183/people-homeless-man-male.jpg', bio: 'Artist from Peru')
user3 = User.create(name: 'Darwich', photo: 'https://images.pexels.com/photos/7173081/pexels-photo-7173081.jpeg', bio: 'Artist from Palestine')
user4 = User.create(name: 'Su', photo: 'https://images.pexels.com/photos/6171563/pexels-photo-6171563.jpeg', bio: 'Artist from Japan')
user5 = User.create(name: 'Dante', photo: 'https://images.pexels.com/photos/848117/pexels-photo-848117.jpeg', bio: 'Artist from Narania')


post1 = Post.create(author: user1, title: 'I am Vertical', text: 'But I would rather be horizontal.
I am not a tree with my root in the soil
Sucking up minerals and motherly love
So that each March I may gleam into leaf,
Nor am I the beauty of a garden bed
Attracting my share of Ahs and spectacularly painted,
Unknowing I must soon unpetal.
Compared with me, a tree is immortal
And a flower-head not tall, but more startling,
And I want the ones longevity and the others daring.
')

post2 = Post.create(author: user2, title: 'Enigma with Flower', text: 'Victory. It has come late, I had not learnt
how to arrive, like the lily, at will,
the white figure, that pierces
the motionless eternity of earth,
pushing at clear, faint, form,
till the hour strikes: that clay,
with a white ray, or a spur of milk.
Shedding of clothing, the thick darkness of soil,
on whose cliff the fair flower advances,
till the flag of its whiteness
defeats the contemptible deep of night,
and, from the motion of light,
spills itself in astonished seed.')

post3 = Post.create(author: user3, title: 'The Dice Player', text: ' Who am I to say to you
what I say to you?
I was not a stone polished by water
and became a face
nor was I a cane punctured by the wind
and became a flute...
I am a dice player,
Sometimes I win and sometimes I lose
I am like you
or slightly less...
I was born next to the well
next to the three lonely trees, lonely like the nuns
born without a celebration and without a midwife
I was named by chance
and belonged to a family by chance,
and inherited its features, traits,
and illnesses:
First - an imbalance in the arteries,
and high blood pressure
Second - shyness in addressing the mother,
the father, and the grandmother - the tree
Third - hoping to cure from flu
with a cup of hot chamomile
Fourth - laziness in talking about the gazelle and the lark
Fifth - boredom of winter nights
Sixth - a gross failure in singing ...
I played no role in who I became
It was by chance that I became a male ...
and by chance that I saw a pale moon
like a lemon, flirting with sleepless girls
I did not strive to find
a mole in the most secret places of my body!
I could have not existed
My father could have not
married my mother by chance
Or I could have been
like my sister who screamed then died
and did not realize that she was born for only one hour
and did not know her mother…
Or: like the eggs of the pigeons
smashed before the chicks saw the lights
It was by chance that I became
a survivor in bus accident
Where my school trip was delayed
because I forgot existence and its conditions
when I was reading a love story the night before,
I impersonated the role of the author,
and the role of the beloved - the victim
so I became the martyr of love in the novel
and the survivor in the road accident
I played no role in kidding with the sea,
but I was a reckless boy,
a fan of hanging around the attractiveness of water
calling me: Come to me!
nor did I play any role in surviving the sea
I was rescued by a human gull
who saw the waves pulling me and paralyzing my hands
I could have not been infected
by the fairies of the ancient hanging poetry
If the house gate was northerly
not overlooking the sea
If the army patrol did not see the village fire
baking the night
Had the fifteen martyrs re-built the barricades,
Had that field not fallen,
I could have become an olive tree
or a geography teacher
or an expert of the kingdom of ants
or a guardian of echo!
Who am I to say to you
what I say to you
at the door of the church
and I am but a throw of a dice
between a predator and a prey
I earned more awareness
')

post4 = Post.create(author: user2, title: 'I Explain A Few Things', text: 'You are going to ask: and where are the lilacs?
and the poppy-petalled metaphysics?
and the rain repeatedly spattering
its words and drilling them full
of apertures and birds?
I will tell you all the news.
I lived in a suburb,
a suburb of Madrid, with bells,
and clocks, and trees.')

post5 = Post.create(author: user3, title: 'Hello', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat')

post1 = Post.create(author: user3, title: 'I am who I am', text: 'But I would rather be horizontal.
I am not a tree with my root in the soil
Sucking up minerals and motherly love
So that each March I may gleam into leaf,
Nor am I the beauty of a garden bed
Attracting my share of Ahs and spectacularly painted,
Unknowing I must soon unpetal.
Compared with me, a tree is immortal
And a flower-head not tall, but more startling,
And I want the ones longevity and the others daring.
Tonight, in the infinitesimal light of the stars,
The trees and flowers have been strewing their cool odors.
I walk among them, but none of them are noticing.
Sometimes I think that when I am sleeping
I must most perfectly resemble them--
Thoughts gone dim.
It is more natural to me, lying down.
Then the sky and I are in open conversation,
And I shall be useful when I lie down finally:
The the trees may touch me for once, and the flowers have time for me.')
post1 = Post.create(author: user4, title: 'Light', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat')
post1 = Post.create(author: user4, title: 'Shadows', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat')
post1 = Post.create(author: user5, title: 'Sudden Light', text: 'have been here before,
But when or how I cannot tell:
I know the grass beyond the door,
The sweet keen smell,
The sighing sound, the lights around the shore ')
post1 = Post.create(author: user5, title: 'Inferno Canto 01', text: 'When I had journeyed half of our life is way,
I found myself within a shadowed forest,
for I had lost the path that does not stray.')


# comment2 = Comment.create(post: post2,  author: user1,text: 'Nothing to add' )
# comment3 = Comment.create(post: post2,  author: user2,text: 'One of your best posts' )
# comment4 = Comment.create(post: post1,  author: user2,text: 'Great' )
# comment6 = Comment.create(post: post2,  author: user3,text: 'Still, one of my favourite texts' )
# comment7 = Comment.create(post: post1,  author: user3,text: 'Can you write about light and shadow?' )
# comment8 = Comment.create(post: post1,  author: user4,text: 'Great' )
# comment9 = Comment.create(post: post2,  author: user5,text: 'I can not wait to read your next text' )


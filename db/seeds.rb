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
second_user = User.create(name: 'Shadow', photo: 'https://unsplash.com/photos/7l4r3WqqeuQ', bio: 'From your imaginaation')

first_post = Post.create(author_id: 1, title: 'Between fire and light', text: 'To burn or not to burn that is the question')
second_post = Post.create(author_id: 1, title: 'Stary fire', text: 'Mystic as as a stary night in Van Goghs painting')

Comment.create(post: first_post, author: second_user, text: 'You are Hell..arious!!' )

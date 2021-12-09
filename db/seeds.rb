puts "Resetting database..."
Avatar.destroy_all
Avatar.reset_pk_sequence
User.destroy_all
User.reset_pk_sequence
Question.destroy_all
Question.reset_pk_sequence
GameInstance.destroy_all
GameInstance.reset_pk_sequence


puts "Seeding avatars..."
adventurer = Avatar.create(name: "Adventurer", img_url: "/images/avatars/adventurer_looking.png")
hiker = Avatar.create(name: "Hiker", img_url: "/images/avatars/adventurer_walkingstick.png")
archer = Avatar.create(name: "Archer", img_url: "/images/avatars/bow.png")
crossbow = Avatar.create(name: "Arbalist", img_url: "/images/avatars/crossbow.png")
dragon = Avatar.create(name: "Dragon", img_url: "/images/avatars/dragon.png")
druid = Avatar.create(name: "Druid", img_url: "/images/avatars/druid.png")
knight = Avatar.create(name: "Knight", img_url: "/images/avatars/knight.png")
sorcerer = Avatar.create(name: "Sorcerer", img_url: "/images/avatars/magician.png") 
wizard = Avatar.create(name: "Wizard", img_url: "/images/avatars/wizard.png")

puts "Seeding users..."
user1 = User.create(username: "Alex", password: "123", avatar_id: dragon.id)
user2 = User.create(username: "Joshua", password: "123", avatar_id: crossbow.id)
user3 = User.create(username: "Shannon", password: "123", avatar_id: sorcerer.id)

puts "Seeding questions..."
q1 = Question.create(question: "
    If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.
    ", answer: "answer 1")


q2 = Question.create(question: "question 2", answer: "answer 2")
q3 = Question.create(question: "question 3", answer: "answer 3")
q4 = Question.create(question: "question 4", answer: "answer 4")
q5 = Question.create(question: "question 5", answer: "answer 5")

puts "Seeding game instances..."
game1 = GameInstance.create(score: 3, user_id: user1.id)
game2 = GameInstance.create(score: 4, user_id: user2.id)
game3 = GameInstance.create(score: 5, user_id: user3.id)

puts "Done seeding!"



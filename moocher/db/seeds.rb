# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Item.destroy_all
RentedItem.destroy_all

user1 = User.create(name: 'Anthony', username: 'ant_grizz', street: '8025 13th Street', city:'Silver Spring', zip_code: 21075, state: 'MD', owner_rating: 5, borrower_rating: 5)

user2 = User.create(name: 'Aaron', username: 'agthegreat1', street: '8025 13th Street', city:'Silver Spring', zip_code: 21075, state: 'MD', owner_rating: 5, borrower_rating: 4)

user3 = User.create(name: 'Annette', username: 'aaawayne3', street: '7121 Little Cove Farm Way', city:'Elkridge', zip_code: '21075', state: 'MD', owner_rating: 4, borrower_rating: 5)


item1 = Item.create(name: 'Basketball', description: 'spalding basketball', image: 'basketball', condition: 'good', owner: user1)

item2 = Item.create(name: 'Book', description: 'The Spook Who Sat By The Door', image: 'book', condition: 'good', owner: user1)

item3 = Item.create(name: 'Instant Pot', description: 'New Instant Pot', image: 'instant pot', condition: 'good', owner: user1)


rent1 = RentedItem.create(owner_id: user1, borrower_id: user2, item_id: item1, start_date: '2019-04-02', end_date: '2019-05-05', availability: 'available')

rent2 = RentedItem.create(owner_id: user1, borrower_id: user3, item_id: item3, start_date: '2019-04-21', end_date: '2019-05-05', availability: 'available')

rent3 = RentedItem.create(owner_id: user1, borrower_id: user2, item_id: item3, start_date: '2019-04-21', end_date: '2019-05-05', availability: 'available')

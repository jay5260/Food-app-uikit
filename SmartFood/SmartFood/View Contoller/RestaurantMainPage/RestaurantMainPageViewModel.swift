//
//  RestaurantMainPageViewModel.swift
//  SmartFood
//
//  Created by jay kumbhani on 13/04/24.
//

import Foundation

class RestaurantMainPageViewModel {
    
    let imgArr = ["Rs_Menu 10", "Rs_Menu 2", "Rs_Menu 3", "Rs_Menu 4", "Rs_Menu 5", "Rs_Menu 6", "Rs_Menu 7", "Rs_Menu 8", "Rs_Menu 9", "Rs_Menu 1", "Rs_Menu 11", ]
    
    var menuArr = [MenuModel(itemName: "Green Noddle", itemImg: "Menu 1", itemHotelName: "Noodle Home", itemPrice: "$15"),
                   MenuModel(itemName: "Herbal Pancake", itemImg: "Menu 2", itemHotelName: "Warung Herbal", itemPrice: "$9"),
                   MenuModel(itemName: "Green Bhaji", itemImg: "Menu 3", itemHotelName: "Wijie Resto", itemPrice: "$7.89"),
                   MenuModel(itemName: "Fruit Salad", itemImg: "Menu 4", itemHotelName: "Noodle Gini", itemPrice: "$51"),
                   MenuModel(itemName: "Spacy fresh crab", itemImg: "Menu 5", itemHotelName: "Waroenk kita", itemPrice: "$3"),
                   MenuModel(itemName: "French fries", itemImg: "Menu 6", itemHotelName: "Golmag Jina", itemPrice: "$4"),
                   MenuModel(itemName: "Frenky", itemImg: "Menu 7", itemHotelName: "Wendy's", itemPrice: "$3.50"),
    ]
    var testimonialArr = [
        TestimonialModel(
            userName: "Jay Kumbhani • You",
            userImage: "Jay image",
            testimonialDate: Date(),
            rating: 5,
            message: "I absolutely loved the Green Noodle dish at Noodle Home. It was delicious and perfectly cooked. The ambiance of the restaurant was also great! Highly recommend it to everyone."
        ),
        TestimonialModel(
            userName: "Jane Smith",
            userImage: "Face 2",
            testimonialDate: Date(),
            rating: 4,
            message: "Tried the Herbal Pancake at Warung Herbal and it was delightful. The flavors were amazing and the price was very reasonable. Will definitely come back for more! The service was excellent too."
        ),
        TestimonialModel(
            userName: "Alice Johnson",
            userImage: "Face 3",
            testimonialDate: Date(),
            rating: 4,
            message: "The Green Bhaji at Wijie Resto was okay. It lacked some flavor, but the price was fair. I might try something else next time. Overall, the experience was decent."
        ),
        TestimonialModel(
            userName: "Bob Williams",
            userImage: "Face 4",
            testimonialDate: Date(),
            rating: 5,
            message: "The Fruit Salad at Noodle Gini was simply amazing! It was so fresh and packed with different fruits. I loved every bite of it. Great job to the chefs!"
        ),
        TestimonialModel(
            userName: "Emily Brown",
            userImage: "Face 5",
            testimonialDate: Date(),
            rating: 4,
            message: "I ordered the Spicy fresh crab at Waroenk kita and was very disappointed. The crab was overcooked and the spice level was unbearable. Definitely not worth the price."
        ),
        TestimonialModel(
            userName: "Michael Wilson",
            userImage: "Face 6",
            testimonialDate: Date(),
            rating: 4,
            message: "Had a great time at Golmag Jina trying out their French fries. They were crispy and delicious. Perfect snack for a casual evening. Will surely visit again."
        ),
        TestimonialModel(
            userName: "Sarah Davis",
            userImage: "Face 1",
            testimonialDate: Date(),
            rating: 5,
            message: "Wendy's Frenky burger was a delightful surprise! The combination of flavors was fantastic and the portion size was generous. I'll definitely be back for more."
        ), 
        TestimonialModel(
            userName: "David Garcia",
            userImage: "Face 2",
            testimonialDate: Date(),
            rating: 4,
            message: "I tried the Green Noodle dish at Noodle Home and found it to be decent. The flavors were okay, but I expected a bit more seasoning. The portion size was good though."
        ),
        TestimonialModel(
            userName: "Sophia Martinez",
            userImage: "Face 3",
            testimonialDate: Date(),
            rating: 5,
            message: "The Herbal Pancake at Warung Herbal exceeded my expectations! It was so flavorful and aromatic. The presentation was beautiful too. Can't wait to go back for more!"
        ),
        TestimonialModel(
            userName: "Daniel Rodriguez",
            userImage: "Face 4",
            testimonialDate: Date(),
            rating: 4,
            message: "I visited Wijie Resto and tried their Green Bhaji. It was quite tasty, although I felt it could use a bit more spice. Overall, it was a good experience."
        ),
        TestimonialModel(
            userName: "Olivia Hernandez",
            userImage: "Face 5",
            testimonialDate: Date(),
            rating: 5,
            message: "Noodle Gini's Fruit Salad is a must-try! It's so refreshing and healthy. I loved the variety of fruits used. Definitely a great choice for a light meal."
        ),
        TestimonialModel(
            userName: "Ethan Lopez",
            userImage: "Face 6",
            testimonialDate: Date(),
            rating: 5,
            message: "The Spicy fresh crab at Waroenk kita was a letdown. It was overly salty and lacked freshness. I wouldn't recommend it."
        ),
        TestimonialModel(
            userName: "Ava Gonzalez",
            userImage: "Face 1",
            testimonialDate: Date(),
            rating: 4,
            message: "I enjoyed the French fries at Golmag Jina. They were perfectly crispy and seasoned just right. A great snack option!"
        ),
        TestimonialModel(
            userName: "Noah Perez",
            userImage: "Face 2",
            testimonialDate: Date(),
            rating: 5,
            message: "Wendy's Frenky burger is my new favorite! The flavors are incredible and the burger is always fresh. I can't get enough of it!"
        )]
}


// Testimonial Model
struct TestimonialModel {
    let userName: String
    let userImage: String
    let testimonialDate: Date
    let rating: Int
    let message: String
    
    
    var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "d MMM, yyyy"
        return dateFormatter.string(from: testimonialDate)
    }
}

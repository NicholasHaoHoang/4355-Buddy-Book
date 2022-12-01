//
//  Buddy class
//  Abstract class that defines the buddy
//

import Foundation
import UIKit
extension Date {
    func string(format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}
class Buddy{
    struct relationship{
        var relationshipWith : Buddy?
        var relationshipType : String
    }
    
    //parameters
    var name = ""
    var id : UUID
    var profilePicture: UIImage
    var isFav : Bool
    var age: String
    var height : String
    var weight : String
    var likes : [String]
    var dislikes : [String]
    var giftIdeas : [String]
    var bio : String
    var importantFacts : [String]
    var importantDates : [String]
    var relationships : [relationship]
    //var relationships : [String]
    
    //default constructor
    
    init(){
        self.id = UUID()
        self.name = ""
        self.profilePicture = UIImage(named: "tempBackground")!
        self.isFav = false
        self.age = ""
        self.height = ""
        self.weight = ""
        self.likes = [String()]
        self.dislikes = [String()]
        self.giftIdeas = [String()]
        self.bio = ""
        self.importantFacts = [""]
        self.importantDates = [String()]
        self.relationships = [relationship(relationshipWith: nil, relationshipType: "")]
        //self.relationships = [String()]
    }
    
    //constructor with parameters
    init(id: UUID, name: String, profilePicture: UIImage = UIImage(), isFav:Bool=false, age: String = String(), height : String = "", weight : String = "", likes : [String] = [""], dislikes : [String] = [""], giftIdeas : [String] = [""], bio : String = "", importantFacts : [String] = [""], importantDates : [String] = [String()], relationships : [relationship] = [relationship(relationshipWith: nil, relationshipType: "")]){
        self.id = id
        self.name = name
        self.profilePicture = profilePicture
        self.isFav = isFav
        self.age = age
        self.height = height
        self.weight = weight
        self.likes = likes
        self.dislikes = dislikes
        self.giftIdeas = giftIdeas
        self.bio = bio
        self.importantFacts = importantFacts
        self.importantDates = importantDates
        self.relationships = relationships
    }
   
    //Dummy Data
    static func fetchBuddys() -> [Buddy]{
        let bobert = Buddy(id: UUID(), name: "Bob", profilePicture: UIImage(named: "bobProfilePic")!, isFav: true,
                  age : "21",
                  height : "5' 9",
                  weight : "150",
                  likes : ["Gaming","Eating"],
                  dislikes : ["Parties","Country Music"],
                  giftIdeas : ["Plushy","Keychain"],
                  bio : "Brown-Haired guy, the one with glasses",
                  importantFacts : ["Met him at twitchcon","Works on fridays"],
                  importantDates : ["10/12 go to beach", "12/12 1 year work anniversary"])
            let steven = Buddy(id: UUID(), name: "Steven", profilePicture: UIImage(named: "stevenProfilePic")!, isFav: true,
                  age : "24",
                  height : "6'2",
                  weight : "180",
                  likes : ["Shopping","Working out","Beaches"],
                  dislikes : ["Seafood","The letter Z"],
                  giftIdeas : ["Dior Jacket","Alphalete Hoodie"],
                  bio : "Fashionable, but mean guy. Tall and wears fake glasses",
                  importantFacts : ["Allergic to Shrimp", "Loves his dog"],
                  importantDates : ["02/12 Cabo Trip"],
                               relationships : [relationship(relationshipWith: bobert, relationshipType: "Best Friend")]
            )
                                                
            let joann = Buddy(id: UUID(), name: "JoAnn", profilePicture: UIImage(named: "joannProfilePic")!, isFav: false,
                  age : "23",
                  height : "5' 1",
                  weight : "100",
                  likes : ["Sleeping","Boxing"],
                  dislikes : ["Beaches","Spiders"],
                  giftIdeas : ["Sunscreen","iPod"],
                  bio : "Black-Haired girl, likes running and works at McDonald's",
                  importantFacts : ["Met her at McDonalds", "passes out when she sees blood"],
                  importantDates : ["10/11 Dinner at Burger King (her treat)"],
                  relationships : [relationship(relationshipWith: steven, relationshipType: "Gym Partner")]
            )
        return[bobert,steven,joann]
    }
}

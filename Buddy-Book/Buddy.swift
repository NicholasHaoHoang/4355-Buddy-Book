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
    //parameters
    var name = ""
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
    var relationships : [String]
    
    //default constructor
    init(){
        self.name = ""
        self.profilePicture = UIImage()
        self.isFav = false
        self.age = ""
        self.height = ""
        self.weight = ""
        self.likes = [""]
        self.dislikes = [""]
        self.giftIdeas = [""]
        self.bio = ""
        self.importantFacts = [""]
        self.importantDates = [String()]
        self.relationships = [String()]
    }
    
    //constructor with parameters
    init(name: String, profilePicture: UIImage, isFav:Bool=false, age: String = String(), height : String = "", weight : String = "", likes : [String] = [""], dislikes : [String] = [""], giftIdeas : [String] = [""], bio : String = "", importantFacts : [String] = [""], importantDates : [String] = [String()], relationships : [String] = [String()]){
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
        return [
            Buddy(name: "Bob", profilePicture: UIImage(named: "bobProfilePic")!, isFav: true,
                  age : "21",
                  height : "5' 9",
                  weight : "150",
                  likes : ["Gaming","Eating"],
                  dislikes : ["Parties","Country Music"],
                  giftIdeas : ["Plushy","Keychain"],
                  bio : "Brown-Haired guy, the one with glasses",
                  importantFacts : ["Met him at twitchcon, works on fridays"],
                  importantDates : ["10/12 go to beach"],
                  relationships : ["Steven"]),
            Buddy(name: "Steven", profilePicture: UIImage(named: "stevenProfilePic")!, isFav: true,
                  age : "18",
                  height : "5' 9",
                  weight : "150",
                  likes : ["Gaming","Eating"],
                  dislikes : ["Parties","Country Music"],
                  giftIdeas : ["Plushy","Keychain"],
                  bio : "Brown-Haired guy, the one with glasses",
                  importantFacts : ["Met him at twitchcon, works on fridays"],
                  importantDates : ["10/12 go to beach"],
                  relationships : ["Steven"]),
            Buddy(name: "JoAnn", profilePicture: UIImage(named: "joannProfilePic")!, isFav: true,
                  age : "23",
                  height : "5' 9",
                  weight : "150",
                  likes : ["Gaming","Eating"],
                  dislikes : ["Parties","Country Music"],
                  giftIdeas : ["Plushy","Keychain"],
                  bio : "Brown-Haired guy, the one with glasses",
                  importantFacts : ["Met him at twitchcon, works on fridays"],
                  importantDates : ["10/12 go to beach"],
                  relationships : ["Steven"]),
        ]
    }
}

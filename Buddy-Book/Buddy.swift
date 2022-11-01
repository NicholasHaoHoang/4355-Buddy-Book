//
//  Buddy class
//  Abstract class that defines the buddy
//

import Foundation
import UIKit

class Buddy{
    //parameters
    var name = ""
    var profilePicture: UIImage
    var isFav : Bool
    var birthday: Date
    var height : String
    var weight : String
    var likes : [String]
    var dislikes : [String]
    var giftIdeas : [String]
    var bio : String
    var importantFacts : [String]
    var importantDates : [Date]
    var relationships : [Buddy]
    var gallery : [UIImage]
    
    //default constructor
    init(){
        self.name = ""
        self.profilePicture = UIImage()
        self.isFav = false
        self.birthday = Date()
        self.height = ""
        self.weight = ""
        self.likes = [""]
        self.dislikes = [""]
        self.giftIdeas = [""]
        self.bio = ""
        self.importantFacts = [""]
        self.importantDates = [Date()]
        self.relationships = [Buddy()]
        self.gallery = [UIImage()]
    }
    
    //constructor with parameters
    init(name: String, profilePicture: UIImage, isFav:Bool=false, birthday: Date = Date(), height : String = "", weight : String = "", likes : [String] = [""], dislikes : [String] = [""], giftIdeas : [String] = [""], bio : String = "", importantFacts : [String] = [""], importantDates : [Date] = [Date()], relationships : [Buddy] = [Buddy()], gallery : [UIImage] = [UIImage()]){
        self.name = name
        self.profilePicture = profilePicture
        self.isFav = isFav
        self.birthday = birthday
        self.height = height
        self.weight = weight
        self.likes = likes
        self.dislikes = dislikes
        self.giftIdeas = giftIdeas
        self.bio = bio
        self.importantFacts = importantFacts
        self.importantDates = importantDates
        self.relationships = relationships
        self.gallery = gallery
    }
    
    //Dummy Data
    static func fetchBuddys() -> [Buddy]{
        return [
            Buddy(name: "Bob", profilePicture: UIImage(named: "bobProfilePic")!, isFav: true),
            Buddy(name: "Steven", profilePicture: UIImage(named: "stevenProfilePic")!),
            Buddy(name: "JoAnn", profilePicture: UIImage(named: "joannProfilePic")!),
        ]
    }
}

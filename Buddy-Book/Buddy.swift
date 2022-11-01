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
    
    //default constructor
    init(){
        self.name = ""
        self.profilePicture = UIImage()
        self.isFav = false
    }
    
    //constructor with parameters
    init(name: String, profilePicture: UIImage, isFav:Bool=false){
        self.name = name
        self.profilePicture = profilePicture
        self.isFav = isFav
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

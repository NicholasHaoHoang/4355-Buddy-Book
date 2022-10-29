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
    
    //default constructor
    init(){
        self.name = ""
        self.profilePicture = UIImage()
    }
    
    //constructor with parameters
    init(name: String, profilePicture: UIImage){
        self.name = name
        self.profilePicture = profilePicture
    }
    
    //Dummy Data
    static func fetchBuddys() -> [Buddy]{
        return [
            Buddy(name: "Bob", profilePicture: UIImage(named: "bobProfilePic")!),
            Buddy(name: "Steven", profilePicture: UIImage(named: "stevenProfilePic")!),
            Buddy(name: "JoAnn", profilePicture: UIImage(named: "joannProfilePic")!),
        ]
    }
}

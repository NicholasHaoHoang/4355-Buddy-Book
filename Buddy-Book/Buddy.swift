//
//  Buddy.swift
//  Buddy-Book
//
//  Created by student on 10/27/22.
//

import Foundation
import UIKit

class Buddy{
    //parameters
    var name = ""
    var profilePicture: UIImage
    
    init(name: String, profilePicture: UIImage){
        self.name = name
        self.profilePicture = profilePicture
    }
    
    static func fetchBuddys() -> [Buddy]{
        return [
            Buddy(name: "Bob", profilePicture: UIImage(named: "bobProfilePic")!),
            Buddy(name: "Steven", profilePicture: UIImage(named: "stevenProfilePic")!),
            Buddy(name: "JoAnn", profilePicture: UIImage(named: "joannProfilePic")!),
        ]
    }
}

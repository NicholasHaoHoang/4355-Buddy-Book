//
//  CollectionViewCell.swift
//  Buddy-Book
//
//  Created by student on 10/27/22.
//

import Foundation
import UIKit

class CollectionViewCell: UICollectionViewCell{
    
    //IBOutlets
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var meetups: UILabel!
    @IBOutlet weak var dates: UILabel!
    @IBOutlet weak var facts: UIButton!
    @IBOutlet weak var birthday: UILabel!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    
    var buddy: Buddy! {
        didSet{
            self.updateUI()
        }
    }
    
    func updateUI(){
        if let buddy = buddy{
            //Sets parameters if not empty
            profilePicture.image = buddy.profilePicture
            nameLabel.text = buddy.name
            
        }else{
            //Else set to null
            profilePicture.image = nil
            nameLabel.text = nil
        }
        
        //This part rounds the profile picture so it's a circle instead of a square
        profilePicture.layer.cornerRadius = profilePicture.frame.size.width/2
        profilePicture.clipsToBounds = true
        profilePicture.layer.masksToBounds = true
        
        //border of profile picture
        profilePicture.layer.borderColor = UIColor.purple.cgColor
        profilePicture.layer.borderWidth = 3
    }
}

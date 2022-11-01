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
    @IBOutlet weak var favButton: UIButton!
    
    var buddy: Buddy! {
        didSet{
            self.updateUI()
        }
    }
    
    //How to mark as favorite
    @objc private func handleMarkAsFavorite(){
        buddy.isFav = !buddy.isFav
        updateUI()
    }
    
    func updateUI(){
        if let buddy = buddy{
            //Sets parameters if not empty
            profilePicture.image = buddy.profilePicture
            nameLabel.text = buddy.name
            if(buddy.isFav){
                favButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
            }else{
                favButton.setImage(UIImage(systemName: "star"), for: .normal)
            }
            
        }else{
            //Else set to null
            profilePicture.image = nil
            nameLabel.text = nil
        }
        
        //set target for fav Button
        favButton.addTarget(self, action: #selector(handleMarkAsFavorite), for: .touchUpInside)
        
        //This part rounds the profile picture so it's a circle instead of a square
        profilePicture.layer.cornerRadius = profilePicture.frame.size.width/2
        profilePicture.clipsToBounds = true
        profilePicture.layer.masksToBounds = true
        
        //border of profile picture
        profilePicture.layer.borderColor = UIColor.purple.cgColor
        profilePicture.layer.borderWidth = 3
    }
}

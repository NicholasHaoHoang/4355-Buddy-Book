//
//  CollectionViewCell.swift
//  Buddy-Book
//
//  Created by student on 10/27/22.
//

import Foundation
import UIKit

class CollectionViewCell: UICollectionViewCell{
    
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var buddy: Buddy! {
        didSet{
            self.updateUI()
        }
    }
    
    func updateUI(){
        if let buddy = buddy{
            profilePicture.image = buddy.profilePicture
            nameLabel.text = buddy.name
        }else{
            profilePicture.image = nil
            nameLabel.text = nil
        }
        profilePicture.layer.cornerRadius = 10.0
        profilePicture.layer.masksToBounds = true
    }
}

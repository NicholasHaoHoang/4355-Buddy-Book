//
//  FriendViewController.swift
//  BuddyBook
//
//  Created by student on 10/26/22.
//

import UIKit

class FriendViewController: UIViewController {
    var selectedBuddy = Buddy()
    
    @IBOutlet weak var expandButton: UIButton!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var BioLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var dislikeLabel: UILabel!
    @IBOutlet weak var factsLabel: UILabel!
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var favButton: UIButton!
    
    //How to mark as favorite
    @objc private func handleMarkAsFavorite(){
        selectedBuddy.isFav = !selectedBuddy.isFav
        updateUI()
    }
    
    func updateUI(){
        ageLabel.text = selectedBuddy.age
        heightLabel.text = selectedBuddy.height
        weightLabel.text = selectedBuddy.weight
        BioLabel.text = selectedBuddy.bio
        name.text = selectedBuddy.name
        profilePic.image = selectedBuddy.profilePicture
        if(selectedBuddy.isFav){
            favButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        }else{
            favButton.setImage(UIImage(systemName: "star"), for: .normal)
        }
        favButton.addTarget(self, action: #selector(handleMarkAsFavorite), for: .touchUpInside)
        
        //dateLabel.text = selectedBuddy.importantDates
        //likeLabel.text = selectedBuddy.likes
        //dislikeLabel.text = selectedBuddy.dislikes
        //factsLabel.text = selectedBuddy.importantFacts
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateUI()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

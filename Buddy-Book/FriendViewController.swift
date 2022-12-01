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
    @IBAction func favButtonPressed(_ sender: Any) {
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
        profilePic.layer.cornerRadius = profilePic.frame.size.width/2
        profilePic.clipsToBounds = true
        profilePic.layer.masksToBounds = true
        
        //border of profile picture
        profilePic.layer.borderColor = UIColor.purple.cgColor
        profilePic.layer.borderWidth = 3
        
        
        if(selectedBuddy.isFav){
            favButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        }else{
            favButton.setImage(UIImage(systemName: "star"), for: .normal)
        }
        
        var dateStr = ""
        for i in selectedBuddy.importantDates{
            dateStr += i + "\n"
        }
        var likeStr = ""
        for i in selectedBuddy.likes{
            likeStr += i + "\n"
        }
        var dislikeStr = ""
        for i in selectedBuddy.dislikes{
            dislikeStr += i + "\n"
        }
        var factsStr = ""
        for i in selectedBuddy.importantFacts{
            factsStr += i + "\n"
        }
        dateLabel.text = dateStr
        likeLabel.text = likeStr
        dislikeLabel.text = dislikeStr
        factsLabel.text = factsStr
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

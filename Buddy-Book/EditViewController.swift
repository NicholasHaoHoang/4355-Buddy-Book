//
//  EditViewController.swift
//  BuddyBook
//
//  Created by student on 10/26/22.
//

import UIKit

class EditViewController: UIViewController {
    
    var selectedBuddy = Buddy()
    var oldName : String = "";
    @IBOutlet weak var biobox: UITextField!
    @IBOutlet weak var namebox: UITextField!
    @IBOutlet weak var datebox: UITextField!
    @IBOutlet weak var likesbox: UITextField!
    @IBOutlet weak var dislikebox: UITextField!
    @IBOutlet weak var factbox: UITextField!
    @IBOutlet weak var agebox: UITextField!
    @IBOutlet weak var heightbox: UITextField!
    @IBOutlet weak var weightbox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        oldName = selectedBuddy.name
        namebox.text = selectedBuddy.name
        biobox.text! = selectedBuddy.bio
        datebox.text! = selectedBuddy.importantDates[0]
        likesbox.text! = selectedBuddy.likes[0]
        dislikebox.text! = selectedBuddy.dislikes[0]
        agebox.text! = selectedBuddy.age
        heightbox.text! = selectedBuddy.height
        weightbox.text! = selectedBuddy.weight
        // Do any additional setup after loading the view.
    }
    func updateFirst() {
        selectedBuddy.name = namebox.text!
        selectedBuddy.bio = biobox.text!
        selectedBuddy.importantDates = [datebox.text!]
        selectedBuddy.likes = [likesbox.text!]
        selectedBuddy.dislikes = [dislikebox.text!]
        selectedBuddy.age = agebox.text!
        selectedBuddy.height = heightbox.text!
        selectedBuddy.weight = weightbox.text!
        
    }
    @IBAction func saveButton(_ sender: Any) {
        updateFirst()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "edit_to_list"{
            let listVC = segue.destination as! BuddyListViewController
            var index = -1;
            let buddies = listVC.buddies
            for i in buddies{
                index = index + 1
                if i.name == oldName{
                    listVC.buddies[index] = selectedBuddy
                    break;
                }
            }
            
            
        }
    }
    

}

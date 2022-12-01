//
//  EditViewController.swift
//  BuddyBook
//
//  Created by student on 10/26/22.
//

import UIKit

class AddViewController: UIViewController {
    
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
        if segue.identifier == "add_to_list"{
            let listVC = segue.destination as! BuddyListViewController
            listVC.buddies.insert(selectedBuddy,at:0)
        }
    }
    

}


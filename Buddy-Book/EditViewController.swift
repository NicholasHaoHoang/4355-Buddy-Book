//
//  EditViewController.swift
//  BuddyBook
//
//  Created by student on 10/26/22.
//

import UIKit

class EditViewController: UIViewController {
    var selectedBuddy = Buddy()
    @IBOutlet weak var biobox: UITextField!
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
        //let secondTab = self.tabBarController?.children[0] as! BuddyListViewController
        //secondTab.selectedBuddy = selectedBuddy
    }
    @IBAction func saveButton(_ sender: Any) {
        updateFirst()
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

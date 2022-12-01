//
//  Class for the list of buddies
//

import Foundation
import UIKit

//For
class BuddyListViewController: UIViewController{
    @IBOutlet weak var collectionView: UICollectionView!
    //currently Buddy is getting dummy data from the buddy class
    var buddies = Buddy.fetchBuddys() // array of all the buddies
    let cellScale: CGFloat = 1.0 //scale of the cell
    var selectedBuddy=Buddy()
    var numberBuddy=0
    
    @IBOutlet weak var field: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let screenSize = UIScreen.main.bounds.size //screen size of this screen
        let cellWidth = floor(screenSize.width * cellScale) //decides the cell width
        let cellHeight = floor(screenSize.height * cellScale) //decides the cell height
        let insetX = (view.bounds.width - cellWidth)/2.0 // decides the x inset of the cell
        let insetY = (view.bounds.height - cellHeight)/2.0 //decides the y inset of the cell
        
        let layout = collectionView!.collectionViewLayout as! UICollectionViewFlowLayout
        //sets size of cell to cellWidth and cellHeight
        layout.itemSize = CGSize(width:cellWidth, height: cellHeight)
        //sets inset it insetX and insetY
        collectionView.contentInset = UIEdgeInsets(top:insetY, left: insetX, bottom: insetY, right: insetX)
        
        //set delegate and dataSource to self
        collectionView.dataSource = self
        collectionView.delegate = self
        
        //update Cell
        
    }
    
    @IBAction func searchBar(_ sender: Any) {
        var text: String = field.text!
        var count = 0
        for buddy in buddies {
            if buddy.name == text {
                numberBuddy=count
                let vc = storyboard?.instantiateViewController(withIdentifier: "FriendViewController") as? FriendViewController
                //sets VC's selectedBuddy to the one selected
                vc?.selectedBuddy = buddies[count]
                self.navigationController?.pushViewController(vc!, animated: true)
            }
            else{
                createAlert(title: "Name not found", msg: "Please enter a valid name")
            }
            count=count+1
        }
    }
    func createAlert(title: String, msg: String) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: { _ in 
            self.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
}

//extension for Collection View
extension BuddyListViewController: UICollectionViewDataSource{
    
    //returns the cell's contents
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //Sets the cell with identifier "buddyCell" contents
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "buddyCell", for: indexPath) as! CollectionViewCell
        cell.layer.cornerRadius = 10.0
        cell.layer.masksToBounds = true
        //Get the buddy at this index
        let buddy = buddies[indexPath.item]
        cell.buddy = buddy
        cell.height.text = buddy.height
        cell.weight.text = buddy.weight
        cell.age.text = buddy.age
        var dateStr = ""
        for i in buddy.importantDates{
            dateStr += i + "\n"
        }
        cell.bio.text = buddy.bio
        var factStr = ""
        for i in buddy.importantFacts{
            factStr += i + "\n"
        }
        cell.facts.text = factStr
        cell.dates.text = dateStr
        
        return cell
    }
    
    //returns number of sections
    func numberOfSections(in collectionView: UICollectionView) -> Int{
        return 1
    }
    
    //Returns the amount of cards
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        //returns the amount of buddies found
        return buddies.count
    }
    
    //does action for the selected card
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        //gets Friend VC
        let vc = storyboard?.instantiateViewController(withIdentifier: "FriendViewController") as? FriendViewController
        //sets VC's selectedBuddy to the one selected
        vc?.selectedBuddy = buddies[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}

//Extension for UIScrollView
extension BuddyListViewController : UIScrollViewDelegate, UICollectionViewDelegate{
    
    //Scroll View for snapping to a card
    //i.e. stops free scrolling
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        
        let layout = self.collectionView?.collectionViewLayout as! UICollectionViewFlowLayout
        let cellWidthIncludingSpacing = layout.itemSize.width + layout.minimumLineSpacing
        
        var offset = targetContentOffset.pointee
        let index = (offset.x + scrollView.contentInset.left)/cellWidthIncludingSpacing
        let roundedIndex = round(index)
        offset = CGPoint(x: roundedIndex * cellWidthIncludingSpacing - scrollView.contentInset.left, y: scrollView.contentInset.top)
        
        targetContentOffset.pointee = offset
    }
}
    

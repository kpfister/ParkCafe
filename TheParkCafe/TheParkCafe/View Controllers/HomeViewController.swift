//
//  HomeViewController.swift
//  TheParkCafe
//
//  Created by Karl Pfister on 1/15/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UIScrollViewDelegate, UITableViewDelegate, UITableViewDataSource {

    // Mark: - Outlets
    @IBOutlet weak var dailySpecialsScrollView: UIScrollView!
    @IBOutlet weak var dailySpecialsPageControl: UIPageControl!
    @IBOutlet weak var mainMenuTableView: UITableView!
    
    
    // MockData for testing
    let mondaySpecial = ["title":"Don Jose Burrito","image":"donJose","description":"This burrito is so good!" ]
    let tuesdaySpecial = ["title":"Tuesday thing", "image":"eggsBenny","description":"Tuesday is so great"]
    let wednesdaySpecial = ["title":"Wednesday thing","image":"rancheros","description":"say what wednessday!"]
    
    var daysArray = [Dictionary<String,String>]()
    var menuItemsArray: [MenuItems] = []
    
    // Mark: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// Mock data to test
        daysArray = [mondaySpecial,tuesdaySpecial,wednesdaySpecial]
        dailySpecialsScrollView.isPagingEnabled = true
        dailySpecialsScrollView.contentSize = CGSize(width: self.view.bounds.width * CGFloat(daysArray.count), height: 180)
        dailySpecialsScrollView.showsHorizontalScrollIndicator = false
        dailySpecialsScrollView.delegate = self
        loadSpecials()
    }
    
    func loadSpecials() {
        for (index, day) in daysArray.enumerated() {
            if let dailySpecialView = Bundle.main.loadNibNamed("DailySpeacialsView", owner: self, options: nil)?.first as? DailySpecialsView {
                
                //dailySpecialView.dailySpecialsImageView.image = UIImage(named: day["image"]!)
                //dailySpecialView.dailySpecialsDescriptionLabel.text = day["description"]
                dailySpecialView.dailySpecialsDescriptionLabel.text? = MenuController.doublePlay.description!
                dailySpecialsScrollView.addSubview(dailySpecialView)
                dailySpecialView.frame.size.width = self.view.bounds.size.width
                dailySpecialView.frame.origin.x = CGFloat(index) * self.view.bounds.size.width
            
            }
        }
    }
    
    
      //TODO: - Create the detail view and seque to it.
     /*
     if segue.identifier == "toDetailView" {
     if let entryDetailViewController = segue.destination as? EntryDetailViewController {
     if let entryCell = sender as? UITableViewCell {
     if let indexPath = tableView.indexPath(for: entryCell) {
     let entry = EntryController.sharedInstance.entries[indexPath.row]
     entryDetailViewController.entry = entry
     }
     }
     }
     }
     */
     //MARK: - Navigation
     //In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailPage" {
            if let detailVC = segue.destination as? DetailsTableViewController {
                if let menuItemCell = sender as? UITableViewCell {
                    if let indexPath = mainMenuTableView.indexPath(for: menuItemCell) {
                        //let entry = EntryController.sharedInstance.entries[indexPath.row]
                        //detailVC.name = menuItemsArray[indexPath.row].name
                    }
                }
            }
        }
        print("There may have been a error )")
    }
 
    
    // MARK: - Tableview Datasources
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MenuController.appMenu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "appMenuCell") else { return UITableViewCell() }
        let item = MenuController.appMenu[indexPath.row]
        cell.textLabel?.text = item

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = indexPath.row
        print(row)
    }
    // Mark : - Scroll View methods
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let page = scrollView.contentOffset.x / scrollView.frame.size.width
        dailySpecialsPageControl.currentPage = Int(page)
    }
}

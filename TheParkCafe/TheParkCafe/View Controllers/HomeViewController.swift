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
    //let wednesdaySpecial = ["title":"Wednesday thing","image":"rancheros","description":"say what wednessday!"]
    
    var daysArray = [Dictionary<String,String>]()
    var menuItemsArray: [MenuItems] = []
    
    // Mark: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
//        let image = UIImage(named: "ParkCafeLogo")
//        navigationItem.titleView = UIImageView(image: image)
        
        let blurEffect = UIBlurEffect(style: .light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        let backgroundImageView = UIImageView(image: UIImage(named: "outsideEmpty"))
        backgroundImageView.frame = self.view.frame
        backgroundImageView.contentMode = .scaleAspectFit
        blurView.frame = backgroundImageView.bounds
        backgroundImageView.addSubview(blurView)
        //backgroundImageView.alpha = 0.9
       mainMenuTableView.backgroundView = backgroundImageView
        

        daysArray = [mondaySpecial,tuesdaySpecial]
        dailySpecialsScrollView.isPagingEnabled = true
        dailySpecialsScrollView.contentSize = CGSize(width: self.view.bounds.width * CGFloat(daysArray.count), height: 180)
        dailySpecialsScrollView.showsHorizontalScrollIndicator = false
        dailySpecialsScrollView.delegate = self
        loadSpecials()
        designNavBar()
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
    
    func designNavBar() {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "ParkCafeLogo")
        imageView.image = image
        navigationItem.titleView = imageView
    }
    
    
      //TODO: - Create the detail view and seque to it.
     //MARK: - Navigation
     //In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailPage" {
            if let detailVC = segue.destination as? DetailsTableViewController {
                if let menuItemCell = sender as? UITableViewCell {
                    if let indexPath = mainMenuTableView.indexPath(for: menuItemCell) {
                        detailVC.menuItem = MenuController.appMenu[indexPath.row]
                        detailVC.navigationItem.title = MenuController.appMenuFormattedNames[indexPath.row]
                    }
                }
            }
        }
    }
 
    
    // MARK: - Tableview Datasources
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MenuController.appMenu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "appMenuCell") as? AppMenuTableViewCell else { return UITableViewCell() }

        let sectionName = MenuController.appMenuFormattedNames[indexPath.row]
        cell.appMenuCellLabel.text = sectionName

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = indexPath.row
        print(" The row pressed was \(row)")
    }
    // Mark : - Scroll View methods
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let page = scrollView.contentOffset.x / scrollView.frame.size.width
        dailySpecialsPageControl.currentPage = Int(page)
    }
}

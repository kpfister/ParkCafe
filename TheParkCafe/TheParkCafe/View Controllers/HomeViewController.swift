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
    @IBOutlet weak var dailySpecialsTitleLabel: UILabel!
    
    
    // MockData for testing
//    let mondaySpecial = ["title":"Don Jose Burrito","image":"donJose","description":"This burrito is so good!" ]
//    let tuesdaySpecial = ["title":"Tuesday thing", "image":"eggsBenny","description":"Tuesday is so great"]
    //let wednesdaySpecial = ["title":"Wednesday thing","image":"rancheros","description":"say what wednessday!"]
    
    //var daysArray = [Dictionary<String,String>]()
    var menuItemsArray: [MenuItems] = []
    var dailySpecialsArray: [DailySpecials] = []
    var dayTitle: String = ""
    
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
        
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        let dayz = formatter.string(from: date)
        dayTitle = dayz
        dailySpecialsArray = DailySpecialsController.special(day: "Monday")
        

        //daysArray = [mondaySpecial,tuesdaySpecial]
        dailySpecialsScrollView.isPagingEnabled = true
        dailySpecialsScrollView.contentSize = CGSize(width: self.view.bounds.width * CGFloat(dailySpecialsArray.count), height: 180)
        dailySpecialsPageControl.numberOfPages = dailySpecialsArray.count
        dailySpecialsScrollView.showsHorizontalScrollIndicator = false
        dailySpecialsScrollView.delegate = self
        loadSpecials()
        designNavBar()
    }
    
    func loadSpecials() {
//        let date = Date()
//        let formatter = DateFormatter()
//        formatter.dateFormat = "EEEE"
//        let dayz = formatter.string(from: date)
//       let dayArray = DailySpecialsController.special(day: dayz)
        
    
        for (index, day) in dailySpecialsArray.enumerated() {
            
            if let dailySpecialView = Bundle.main.loadNibNamed("DailySpeacialsView", owner: self, options: nil)?.first as? DailySpecialsView {
                //let idk = day
                //dailySpecialView.dailySpecialsImageView.image = UIImage(named: day["image"]!)
                //dailySpecialView.dailySpecialsDescriptionLabel.text = day["description"]
                
                dailySpecialView.dailySpecialsDescriptionLabel.text? = day.description!
                dailySpecialView.dailySpecialsTitleLabel.text? = day.name
                
                dailySpecialView.frame = dailySpecialsScrollView.frame
                dailySpecialView.frame.origin.x = CGFloat(index) * self.view.bounds.size.width
                dailySpecialsScrollView.addSubview(dailySpecialView)
            
            }
            dailySpecialsTitleLabel.text = "\(dayTitle)'s Specials"
        }
    }
    /*
     (lldb) po DailySpecialsManager.special(day: day)
     ▿ 2 elements
     - .0 : "Eggs Benedict"
     - .1 : "BFB (Big Fucking Burrito"
     */
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

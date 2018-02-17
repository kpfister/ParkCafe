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
    
    // Mark: Properties
    var menuItemsArray: [MenuItems] = []
    var dailySpecialsArray: [DailySpecials] = []
    var dayTitle: String = ""
    
    // Mark: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        dailySpecialsScrollView.delegate = self
        
        dailySpecialsArray = DailySpecialsController.special(day: "Monday")
    
        setupDailySpecialsScrollView()
        setupDate()
        loadSpecials()
        designBlurView()
        designNavBar()
    }
    
    func designBlurView() {
        let blurEffect = UIBlurEffect(style: .light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        let backgroundImageView = UIImageView(image: UIImage(named: "outsideEmpty"))
        backgroundImageView.frame = self.view.frame
        backgroundImageView.contentMode = .scaleAspectFit
        blurView.frame = backgroundImageView.bounds
        backgroundImageView.addSubview(blurView)
        mainMenuTableView.backgroundView = backgroundImageView
    }
    func designNavBar() {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "ParkCafeLogo")
        imageView.image = image
        navigationItem.titleView = imageView
    }
    
    func setupDailySpecialsScrollView() {
        dailySpecialsScrollView.isPagingEnabled = true
        dailySpecialsScrollView.contentSize = CGSize(width: self.view.bounds.width * CGFloat(dailySpecialsArray.count), height: 180)
        dailySpecialsPageControl.numberOfPages = dailySpecialsArray.count
        dailySpecialsScrollView.showsHorizontalScrollIndicator = false
        dailySpecialsScrollView.delegate = self
    }
    
    func setupDate() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        let dayz = formatter.string(from: date)
        dayTitle = dayz
    }
    
    func loadSpecials() {
        for (index, day) in dailySpecialsArray.enumerated() {
            
            if let dailySpecialView = Bundle.main.loadNibNamed("DailySpeacialsView", owner: self, options: nil)?.first as? DailySpecialsView {
            
                dailySpecialView.dailySpecialsDescriptionLabel.text? = day.description!
                dailySpecialView.dailySpecialsTitleLabel.text? = day.name
                dailySpecialView.frame = dailySpecialsScrollView.frame
                dailySpecialView.frame.origin.x = CGFloat(index) * self.view.bounds.size.width
                dailySpecialsScrollView.addSubview(dailySpecialView)
            
            }
            dailySpecialsTitleLabel.text = "\(dayTitle)'s Specials"
        }
    }

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
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height / CGFloat(MenuController.appMenu.count)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = indexPath.row
    }
    
    // Mark : - Scroll View methods
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let page = scrollView.contentOffset.x / scrollView.frame.size.width
        dailySpecialsPageControl.currentPage = Int(page)
    }
}

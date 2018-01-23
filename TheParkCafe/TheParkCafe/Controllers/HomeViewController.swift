//
//  HomeViewController.swift
//  TheParkCafe
//
//  Created by Karl Pfister on 1/15/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UIScrollViewDelegate, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var dailySpecialsScrollView: UIScrollView!
    @IBOutlet weak var dailySpecialsPageControl: UIPageControl!
    
    let mondaySpecial = ["title":"Don Jose Burrito","image":"donJose","description":"This burrito is so good!" ]
    let tuesdaySpecial = ["title":"Tuesday thing", "image":"eggsBenny","description":"Tuesday is so great"]
    let wednesdaySpecial = ["title":"Wednesday thing","image":"rancheros","description":"say what wednessday!"]
    
    var daysArray = [Dictionary<String,String>]()
    var menuItemsArray: [MenuItems] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        daysArray = [mondaySpecial,tuesdaySpecial]
        
        dailySpecialsScrollView.isPagingEnabled = true
        dailySpecialsScrollView.contentSize = CGSize(width: self.view.bounds.width * CGFloat(daysArray.count), height: 200)
        dailySpecialsScrollView.showsHorizontalScrollIndicator = false
        dailySpecialsScrollView.delegate = self
        loadSpecials()
        let dailySpecialsController = DailySpecialsController()
        guard let currentDay = dailySpecialsController.getCurrentDay() else { return }
         //DailySpecialsController.DailySpecials.displayBreakfastSpecials = .Monday
       
        /// Mock data to test
        
        
    }
    
    func loadSpecials() {
        for (index, day) in daysArray.enumerated() {
            if let dailySpecialView = Bundle.main.loadNibNamed("DailySpeacialsView", owner: self, options: nil)?.first as? DailySpecialsView {
                
                //dailySpecialView.dailySpecialsImageView.image = UIImage(named: day["image"]!)
                //dailySpecialView.dailySpecialsDescriptionLabel.text = day["description"]
                dailySpecialView.dailySpecialsDescriptionLabel.text = DailySpecialsController.DailyBreakfastSpecials.Monday.rawValue
                dailySpecialsScrollView.addSubview(dailySpecialView)
                dailySpecialView.frame.size.width = self.view.bounds.size.width
                dailySpecialView.frame.origin.x = CGFloat(index) * self.view.bounds.size.width
    
            }
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let page = scrollView.contentOffset.x / scrollView.frame.size.width
        dailySpecialsPageControl.currentPage = Int(page)
    }
    
//    if let dailySpecialsView = Bundle.main.loadNibNamed("DailySpeacialsView", owner: self, options: nil)?.first as? DailySpecialsView {
//        self.view.addSubview(dailySpecialsView)
//    }
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK:- Tableview Datasources
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let array = MenuController.breakfastSpecials
        return array.count
        //return 3
    }
//    func numberOfSections(in tableView: UITableView) -> Int {
//        let array = breakfastSpecials
//        return array.count
//    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "appMenuCell") else { return UITableViewCell() }
        let item = MenuController.breakfastSpecials[indexPath.row]
        cell.textLabel?.text = item.name
        return cell
    }
}

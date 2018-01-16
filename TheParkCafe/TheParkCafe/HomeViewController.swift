//
//  HomeViewController.swift
//  TheParkCafe
//
//  Created by Karl Pfister on 1/15/18.
//  Copyright © 2018 Karl Pfister. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var dailySpecialsScrollView: UIScrollView!
    @IBOutlet weak var dailySpecialsPageControl: UIPageControl!
    
    let mondaySpecial = ["title":"Don Jose Burrito","image":"donJose","description":"This burrito is so good!" ]
    let tuesdaySpecial = ["title":"Tuesday thing", "image":"eggsBenny","description":"Tuesday is so great"]
    let wednesdaySpecial = ["title":"Wednesday thing","image":"rancheros","description":"say what wednessday!"]
    
    var daysArray = [Dictionary<String,String>]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        daysArray = [mondaySpecial,tuesdaySpecial,wednesdaySpecial]
        
        dailySpecialsScrollView.isPagingEnabled = true
        dailySpecialsScrollView.contentSize = CGSize(width: self.view.bounds.width * CGFloat(daysArray.count), height: 250)
        dailySpecialsScrollView.showsHorizontalScrollIndicator = false
        dailySpecialsScrollView.delegate = self
        loadSpecials()
        
        /// Mock data to test
        
        
    }
    
    func loadSpecials() {
        for (index, day) in daysArray.enumerated() {
            if let dailySpecialView = Bundle.main.loadNibNamed("DailySpeacialsView", owner: self, options: nil)?.first as? DailySpecialsView {
                
                dailySpecialView.dailySpecialsImageView.image = UIImage(named: day["image"]!)
                dailySpecialView.dailySpecialsDescriptionLabel.text = day["description"]
                
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


}

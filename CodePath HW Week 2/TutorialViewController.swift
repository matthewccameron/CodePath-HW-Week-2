//
//  TutorialViewController.swift
//  CodePath HW Week 2
//
//  Created by Matthew Cameron on 9/24/15.
//  Copyright © 2015 Matthew Cameron. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {
   
    
    @IBOutlet weak var tutorialScrollView: UIScrollView!
    
    
    
    
    
    @IBOutlet weak var welcome1image: UIImageView!
    
    @IBOutlet weak var welcome2image: UIImageView!
    
    @IBOutlet weak var welcome3image: UIImageView!
    
    @IBOutlet weak var welcome4image: UIImageView!
    
    
    @IBOutlet weak var CarouselButton: UIButton!
    

    @IBOutlet weak var CarouselPageControl: UIPageControl!

    func scrollViewDidEndDecelerating(TutorialScrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(TutorialScrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        CarouselPageControl.currentPage = page
        
        print(CarouselPageControl.currentPage)
        
        if CarouselPageControl.currentPage == 3 {
            print("PAGE 3")
            self.CarouselButton.alpha = 1
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        tutorialScrollView.contentSize = CGSize(width: 1280, height: 568)
        
        tutorialScrollView.delegate = self
        
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

        tutorialScrollView.delegate = self
        

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

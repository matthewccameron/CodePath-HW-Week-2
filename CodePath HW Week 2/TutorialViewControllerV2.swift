//
//  TutorialViewControllerV2.swift
//  CodePath HW Week 2
//
//  Created by Matthew Cameron on 9/26/15.
//  Copyright © 2015 Matthew Cameron. All rights reserved.
//

import UIKit

class TutorialViewControllerV2: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var BackUpButtonImage: UIImageView!
    
    @IBOutlet weak var TutorialScrollViewV2: UIScrollView!
    
    @IBOutlet weak var TutorialPageControlV2: UIPageControl!
    
    @IBOutlet weak var BackUpButtonV2: UIButton!
    
    @IBOutlet weak var TutorialSwitch: UISwitch!
    
    
    func scrollViewDidEndDecelerating(TutorialScrollViewV2: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(TutorialScrollViewV2.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        TutorialPageControlV2.currentPage = page
        
        print(TutorialPageControlV2.currentPage)
        
        if TutorialPageControlV2.currentPage == 3 {
            print("PAGE 3")
            BackUpButtonImage.alpha = 1
            TutorialSwitch.alpha = 1
            BackUpButtonV2.alpha = 1
            
        }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
           view.bringSubviewToFront(self.TutorialPageControlV2)
        view.bringSubviewToFront(self.BackUpButtonImage)
        
        
        view.bringSubviewToFront(self.BackUpButtonV2)
        
        
        view.bringSubviewToFront(self.TutorialSwitch)
        
        TutorialScrollViewV2.contentSize = CGSize(width: 1280, height: 568)
        
         TutorialScrollViewV2.delegate = self
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

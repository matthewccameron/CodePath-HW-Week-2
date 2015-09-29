//
//  TestViewController.swift
//  Delegate Test
//
//  Created by Matthew Cameron on 9/25/15.
//  Copyright © 2015 Matthew Cameron. All rights reserved.
//

import UIKit

class TestViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var TutorialScrollView: UIScrollView!
    
    
    @IBOutlet weak var TutorialPageControl: UIPageControl!
    
    @IBOutlet weak var BackUpButton: UIButton!

    
    
    func scrollViewDidEndDecelerating(TutorialScrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(TutorialScrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        TutorialPageControl.currentPage = page
        
        print(TutorialPageControl.currentPage)
        
        if TutorialPageControl.currentPage == 3 {
            print("PAGE 3")
            self.BackUpButton.alpha = 1
            
        }

        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        TutorialScrollView.contentSize = CGSize(width: 1280, height: 568)
        
        
        TutorialScrollView.delegate = self
        
        
        

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

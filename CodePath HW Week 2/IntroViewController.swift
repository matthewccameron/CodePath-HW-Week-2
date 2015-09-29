//
//  IntroViewController.swift
//  CodePath HW Week 2
//
//  Created by Matthew Cameron on 9/23/15.
//  Copyright © 2015 Matthew Cameron. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet weak var IntroScrollView: UIScrollView!
    
    @IBOutlet weak var IntroImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        IntroScrollView.contentSize = CGSize(width: 320, height: 1136)

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

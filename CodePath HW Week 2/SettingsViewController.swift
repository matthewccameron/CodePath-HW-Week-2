//
//  SettingsViewController.swift
//  CodePath HW Week 2
//
//  Created by Matthew Cameron on 9/28/15.
//  Copyright © 2015 Matthew Cameron. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var SettingsScroll: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        SettingsScroll.contentSize = CGSize(width: 320, height: 695)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onDismissButton(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
        
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

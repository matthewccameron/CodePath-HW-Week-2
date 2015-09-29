//
//  SignInViewController.swift
//  CodePath HW Week 2
//
//  Created by Matthew Cameron on 9/23/15.
//  Copyright © 2015 Matthew Cameron. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBAction func onTapAction(sender: AnyObject) {
        
        textEntryView.endEditing(true)
        
    }
    
    @IBOutlet weak var CreateText: UIImageView!
    
    @IBOutlet weak var textEntryView: UIView!
    
    @IBOutlet weak var SignInVIew: UIView!
    
    var initialYButton: CGFloat!
    let offsetButton: CGFloat = -230
    
    @IBOutlet weak var SignInButtons: UIButton!
    
    var initialY: CGFloat!
    let offset: CGFloat = -60
    
    
    @IBOutlet var onTap: UITapGestureRecognizer!

    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    func keyboardWillShow(notification: NSNotification!) {
        
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(rawValue: UInt(animationCurve << 16)), animations: {
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
        
        self.textEntryView.frame.origin = CGPoint(x: self.textEntryView.frame.origin.x, y: self.initialY + self.offset)
        
        self.SignInVIew.frame.origin = CGPoint(x: self.SignInVIew.frame.origin.x, y: self.initialYButton + self.offsetButton)

        
        self.CreateText.alpha = 0
        
        
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(rawValue: UInt(animationCurve << 16)), animations: {
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
        
        self.textEntryView.frame.origin = CGPoint(x: self.textEntryView.frame.origin.x, y: self.initialY)
        
        self.SignInVIew.frame.origin = CGPoint(x: self.SignInVIew.frame.origin.x, y: self.initialYButton)
        
        self.CreateText.alpha = 1
        
        
    }

    
    
    
    func delay(delay:Double, closure:()->()) {
        
        
        
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
        
        
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        initialY = textEntryView.frame.origin.y
        
        initialYButton = SignInVIew.frame.origin.y
        
        
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onSignInButton(sender: AnyObject) {
        
        if emailTextField.text!.isEmpty {
            let alertController = UIAlertController(title: "Email Required", message: "Please enter an email address", preferredStyle: .Alert)
            
            // create an OK action
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                // handle response here.
            }
            // add the OK action to the alert controller
            alertController.addAction(OKAction)
            
            
    presentViewController(alertController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
            }
            
            
        }
        
        
        else if PasswordTextField.text!.isEmpty {
            let alertController = UIAlertController(title: "Password Required", message: "Please enter a password", preferredStyle: .Alert)
            
            // create an OK action
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                // handle response here.
            }
            // add the OK action to the alert controller
            alertController.addAction(OKAction)
            
            
            presentViewController(alertController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
            }
            
            
        }

        
        else if emailTextField.text! == "mcameron@climate.com" && PasswordTextField.text == "password" {
            
            let SignInController = UIAlertController(title: "Signing In...", message: "", preferredStyle: .Alert)
            
            self.presentViewController(SignInController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
            
                }
            
            
            self.delay(2) {
                
        SignInController.dismissViewControllerAnimated(true, completion: nil)
                
                self.performSegueWithIdentifier("SignInSegue", sender: nil)
            
            }

            
            
            
        }
        
        else {
            
            // Delay for 2 seconds, then run the code between the braces.
            delay(2) {
            
            
            let alertController = UIAlertController(title: "Email or Password Is Incorrect", message: "Please check your email and password", preferredStyle: .Alert)
            
            // create an OK action
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                // handle response here.
            }
            // add the OK action to the alert controller
            alertController.addAction(OKAction)
            
            
            self.presentViewController(alertController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
            }
                
            }

        }
        
        
        }
        
        
    }
    
        
        
        
        
        
        
        
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */



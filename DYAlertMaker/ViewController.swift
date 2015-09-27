//
//  ViewController.swift
//  DYAlertMaker
//
//  Created by Danny Yassine on 2015-09-26.
//  Copyright © 2015 DannyYassine. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIAlertViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actionSheetOne(sender: AnyObject) {
        
        UIAlertController.alertWithOneButtonWithStyle(.ActionSheet, withTitle: "ActionSheet", withMessage: "Message", buttonTitle: "Button1", withDelegate: self)
        
    }

    @IBAction func oneButtonPressed(sender: UIButton) {
        
        UIAlertController.alertWithOneButtonWithStyle(.Alert, withTitle: "Alert", withMessage: "Message", buttonTitle: "Button1", withDelegate: self)
        
    }
    
    @IBAction func twoButtons(sender: UIButton) {
        
        UIAlertController.alertWithTwoButtonWithStyle(.Alert, withTitle: "Alert", withMessage: "Message", firstButtonTitle: "Button1", firstHandler: { (done) -> Void in
            
            }, secondButtonTitle: "Cancel", secondHandler: { (cancel) -> Void in
                
            }, withDelegate: self)
    }
    
    @IBAction func threeButtons(sender: UIButton) {
        
        UIAlertController.alertWithThreeButtonWithStyle(.ActionSheet, withTitle: "Alert", withMessage: "Message", firstButtonTitle: "Button 1", firstHandler: { (done) -> Void in
            
            }, secondButtonTitle: "Button 2", secondHandler: { (done) -> Void in
                
            }, thirdButtonTitle: "Button 3", thirdHandler: { (done) -> Void in
                
            }, withDelegate: self)
        
    }
    
    @IBAction func twoTextFields(sender: AnyObject) {
        
        UIAlertController.alertControllerSignInWithStyle(.Alert, title: "Please sign in.", message: "You will be shortly re-directed", firstButton: "Done", firstHandler: { (done) -> Void in
            
            }, secondButton: "Cancel", secondHandler: { (done) -> Void in
                
            }, withDelegate: self)
        
    }
    
    @IBAction func threeTextFields(sender: AnyObject) {
        
        UIAlertController.alertControllerSignUpWithStyle(.Alert, title: "Sign Up", message: "Sign Up Message", firstButton: "Button1", firstHandler: { (done) -> Void in
            
            }, secondButton: "Button3", secondHandler: { (done) -> Void in
                
            }, withDelegate: self)
    }

    @IBAction func OneTextField(sender: AnyObject) {
        
        UIAlertController.alertControllerWithOneTextFieldWithStyle(.Alert, title: "Title", message: "Message", firstButton: "Button1", firstHandler: { (done) -> Void in
            
            }, secondButton: "Button2", secondHandler: { (done) -> Void in
                
            }, withDelegate: self)
    }
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        
        if buttonIndex == 0 {
            // Do something!
        }
        
    }
}



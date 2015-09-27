# DYAlertMaker
# UIAlertController / UIAlertView / UIActionSheet

This is a great way to reduce lines of code for creating an UIAlertViewController / UIAlertView / UIActionSheet

# One Statement Only

You only need to call one function to instantiate the Alerts. All methods check if the system is iOS 7 or iOS 8 +, then it implements the correct UIAlertView/UIActionSheet or UIAlertController


    UIAlertController.alertWithTwoButtonWithStyle(.Alert, withTitle: "Alert", withMessage: "Message", firstButtonTitle: "Button1", firstHandler: { (done) -> Void in
                
                    // Handler of the first button
                
                }, secondButtonTitle: "Cancel", secondHandler: { (cancel) -> Void in
                    
                    // Handler of the second button
                    
                }, withDelegate: self)

In all methods, you must pass the delegate in the class methods.

![](https://raw.githubusercontent.com/dannyYassine/DYAlertMaker/master/DYAlertMaker1.gif)

# iOS 7 Compatibility

All methods check if the system is iOS 7 or iOS 8 +, then it implements the correct AlertView/ActionSheet or AlertController

Since Apple released UIAlertControlers in the update for iOS 8, I created this file to help me reduce lines of code in my projects.

Like before, for iOS 7, you will have to expose the delegate functions of the UIAlertView/UIActionSheets to determine the pressed button

    //MARK: UIAlertView Delegates
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
            
            if buttonIndex == 0 {
                // Do something!
            }
            
        }

# Sign Up / Sign In (Alerts only)

You can create simple Sign In ou Sign up as an alert. You will have to hold your own logic to handle the textfields. You should implement UITextFieldDelegate methods in order to get the text of those textFields (i.e. "textFieldDidEndEditing").

![](https://raw.githubusercontent.com/dannyYassine/DYAlertMaker/master/DYAlertMaker2.gif)

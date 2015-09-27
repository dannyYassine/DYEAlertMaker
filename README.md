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



# iOS 7 Compatibility

All methods check if the system is iOS 7 or iOS 8 +, then it implements the correct AlertView/ActionSheet or AlertController

Since Apple released UIAlertControlers in the update for iOS 8, I created this file to help me reduce lines of code in my projects.

# Sign Up / Sign In Alerts

You can create simple Sign In ou Sign up as an alert. YOULL HAVE TO CREATE THE LOGIC IN YOUR IMPLEMENTATION FILE WHERE YOU ADD THE ALERTVIEWCONTROLLER. You should set a TAG to the textFields in order to get the texts (already coded in the .m file of AlertMaker). A method is to have a username and password property and using the UIextField Delegate method "textFieldDidEndEditing" to store textField.text to their respective username and password textFields. Then you can have them verified in the handler of your "SAVE" button.

In all methods, you must pass the delegate in the class methods.

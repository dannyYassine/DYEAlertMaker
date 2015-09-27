# DYAlertMaker

This is a great way to reduce lines of code for creating an AlertViewController.

# iOS 7 Compatibility

Added hybrid methods to check if the system is iOS 7 or 8, then it implements the correct AlertView or AlertController */

Since Apple released it in the update for iOS 8, I created this file to help me reduce lines of code in my projects.

You can create an AlertViewController with the desire STYLE, NUMBER OF BUTTONS
(for now I created 5 class methods to allow from 1 to 3 buttons, a Sign In and Sign Up alertControllers)

# Sign Up / Sign In Alerts

You can create simple Sign In ou Sign up as an alert. YOULL HAVE TO CREATE THE LOGIC IN YOUR IMPLEMENTATION FILE WHERE YOU ADD THE ALERTVIEWCONTROLLER. You should set a TAG to the textFields in order to get the texts (already coded in the .m file of AlertMaker). A method is to have a username and password property and using the UIextField Delegate method "textFieldDidEndEditing" to store textField.text to their respective username and password textFields. Then you can have them verified in the handler of your "SAVE" button.

In all methods, you must pass the delegate in the class methods.

//
//  AlertMaker.h
//
//  Created by Danny Yassine on 2014-11-05.
//  Copyright (c) 2014 DY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (AlertMaker)

//Hybrid iOS 7 & 8 Alert
+(void) alertWithOneButtonWithStyle:(UIAlertControllerStyle)alertStyle WithTitle:(NSString*)title withMessage:(NSString*)message buttonTitle:(NSString*)buttonTitle withDelegate:(UIViewController *)view;
//Hybrid iOS 7 & 8 Alert
+(void) alertWithTwoButtonWithStyle:(UIAlertControllerStyle)alertStyle WithTitle:(NSString*)title withMessage:(NSString*)message firstButtonTitle:(NSString*)firstButtonTitle firstHandler:(void (^)(UIAlertAction *action))firstHandler secondButtonTitle:(NSString*)secondButtonTitle secondHandler:(void (^)(UIAlertAction *action))secondHandler withDelegate:(UIViewController *)view;

//Hybrid iOS 7 & 8 Alert
+(void) alertWithThreeButtonWithStyle:(UIAlertControllerStyle)alertStyle WithTitle:(NSString*)title withMessage:(NSString*)message firstButtonTitle:(NSString*)firstButtonTitle firstHandler:(void (^)(UIAlertAction *action))firstHandler secondButtonTitle:(NSString*)secondButtonTitle secondHandler:(void (^)(UIAlertAction *action))secondHandler thirdButtonTitle:(NSString*)thirdButtonTitle thirdHandler:(void (^)(UIAlertAction *action))thirdHandler withDelegate:(UIViewController *)view;

//AlertController with a single UITextField
+(void) alertControllerWithOneTextFieldWithStyle:(UIAlertControllerStyle)style  title:(NSString*)title message:(NSString*)message firstButton:(NSString*)firstButtonTitle firstHandler:(void (^)(UIAlertAction *action))firstHandler secondButton:(NSString*)secondButtonTitle secondHandler:(void (^)(UIAlertAction *action))secondHandler inView:(UIViewController*)view withDelegate:(id)delegate;

//AlertController with Sign In UITextFields
+(void) alertControllerSignInWithStyle:(UIAlertControllerStyle)style  title:(NSString*)title message:(NSString*)message firstButton:(NSString*)firstButtonTitle firstHandler:(void (^)(UIAlertAction *action))firstHandler secondButton:(NSString*)secondButtonTitle secondHandler:(void (^)(UIAlertAction *action))secondHandler inView:(UIViewController*)view withDelegate:(id)delegate;

//AlertController with Sign Up UITexfields
+(void) alertControllerSignUpWithStyle:(UIAlertControllerStyle)style  title:(NSString*)title message:(NSString*)message firstButton:(NSString*)firstButtonTitle firstHandler:(void (^)(UIAlertAction *action))firstHandler secondButton:(NSString*)secondButtonTitle secondHandler:(void (^)(UIAlertAction *action))secondHandler inView:(UIViewController*)view withDelegate:(id)delegate;

//AlertController with Two TextViews & Three Buttons

@end

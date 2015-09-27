//
//  AlertMaker.m
//
//  Created by Danny Yassine on 2014-11-05.
//  Copyright (c) 2014 DY. All rights reserved.
//

#import "AlertMaker.h"

@implementation UIAlertController (AlertMaker)

//HYBRIDS

+(void) alertWithOneButtonWithStyle:(UIAlertControllerStyle)alertStyle WithTitle:(NSString*)title withMessage:(NSString*)message buttonTitle:(NSString*)buttonTitle withDelegate:(UIViewController *)view {
    
    if ([[UIDevice currentDevice].systemVersion intValue] >= 8.0) {
        
        UIAlertController *alertView = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:alertStyle];
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:buttonTitle style:UIAlertActionStyleDefault handler:nil];
        
        [alertView addAction:okAction];
        [view presentViewController:alertView animated:YES completion:nil];
        
    } else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:view cancelButtonTitle:buttonTitle otherButtonTitles:nil];
        alertView.delegate = view;
        [alertView show];
    }
}

+(void) alertWithTwoButtonWithStyle:(UIAlertControllerStyle)alertStyle WithTitle:(NSString*)title withMessage:(NSString*)message firstButtonTitle:(NSString*)firstButtonTitle firstHandler:(void (^)(UIAlertAction *action))firstHandler secondButtonTitle:(NSString*)secondButtonTitle secondHandler:(void (^)(UIAlertAction *action))secondHandler withDelegate:(UIViewController *)view {
    
    //iOS 8
    if ([[UIDevice currentDevice].systemVersion intValue] >= 8.0) {
        
        UIAlertController *alertView = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:alertStyle];
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:firstButtonTitle style:UIAlertActionStyleDefault handler:firstHandler];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:secondButtonTitle style:UIAlertActionStyleCancel handler:secondHandler];

        [alertView addAction:okAction];
        [alertView addAction:cancelAction];

        
        [view presentViewController:alertView animated:YES completion:nil];
        
    //iOS 7 or lower
    } else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:view cancelButtonTitle:secondButtonTitle otherButtonTitles:firstButtonTitle, nil];
        alertView.delegate = view;
        [alertView show];
    }

    
}

+(void) alertWithThreeButtonWithStyle:(UIAlertControllerStyle)alertStyle WithTitle:(NSString*)title withMessage:(NSString*)message firstButtonTitle:(NSString*)firstButtonTitle firstHandler:(void (^)(UIAlertAction *action))firstHandler secondButtonTitle:(NSString*)secondButtonTitle secondHandler:(void (^)(UIAlertAction *action))secondHandler thirdButtonTitle:(NSString*)thirdButtonTitle thirdHandler:(void (^)(UIAlertAction *action))thirdHandler withDelegate:(UIViewController *)view {
    
    //iOS 8
    if ([[UIDevice currentDevice].systemVersion intValue] >= 8.0) {
        
        UIAlertController *alertView = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:alertStyle];
        UIAlertAction *first = [UIAlertAction actionWithTitle:firstButtonTitle style:UIAlertActionStyleDefault handler:firstHandler];
        UIAlertAction *second = [UIAlertAction actionWithTitle:secondButtonTitle style:UIAlertActionStyleDefault handler:secondHandler];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:thirdButtonTitle style:UIAlertActionStyleCancel handler:thirdHandler];
        
        [alertView addAction:first];
        [alertView addAction:second];
        [alertView addAction:cancelAction];
        
        [view presentViewController:alertView animated:YES completion:nil];
        
        //iOS 7 or lower
    } else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:view cancelButtonTitle:secondButtonTitle otherButtonTitles:firstButtonTitle, thirdHandler, nil];
        alertView.delegate = view;
        [alertView show];
    }
    
    
}

+(void) alertControllerWithOneTextFieldWithStyle:(UIAlertControllerStyle)style  title:(NSString*)title message:(NSString*)message firstButton:(NSString*)firstButtonTitle firstHandler:(void (^)(UIAlertAction *action))firstHandler secondButton:(NSString*)secondButtonTitle secondHandler:(void (^)(UIAlertAction *action))secondHandler inView:(UIViewController*)view withDelegate:(id)delegate{
    UIAlertController *alertView = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:style];
    
    UIAlertAction *firstAction = [UIAlertAction actionWithTitle:firstButtonTitle style:UIAlertActionStyleDefault handler:firstHandler];
    UIAlertAction *secondAction = [UIAlertAction actionWithTitle:secondButtonTitle style:UIAlertActionStyleCancel handler:secondHandler];
    
    //textField
    [alertView addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Your Placeholder";
        textField.delegate = delegate;
    }];
    
    [alertView addAction:firstAction];
    [alertView addAction:secondAction];
    [view presentViewController:alertView animated:YES completion:nil];
}

+(void) alertControllerSignInWithStyle:(UIAlertControllerStyle)style  title:(NSString*)title message:(NSString*)message firstButton:(NSString*)firstButtonTitle firstHandler:(void (^)(UIAlertAction *action))firstHandler secondButton:(NSString*)secondButtonTitle secondHandler:(void (^)(UIAlertAction *action))secondHandler inView:(UIViewController*)view withDelegate:(id)delegate{
    UIAlertController *alertView = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:style];
   
    UIAlertAction *firstAction = [UIAlertAction actionWithTitle:firstButtonTitle style:UIAlertActionStyleDefault handler:firstHandler];
    UIAlertAction *secondAction = [UIAlertAction actionWithTitle:secondButtonTitle style:UIAlertActionStyleCancel handler:secondHandler];
    
    //userName textField
    [alertView addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Username";
        textField.delegate = delegate;
    }];

    //password texfield
    [alertView addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Password";
        textField.secureTextEntry = YES;
        textField.delegate = delegate;
    }];
    
    [alertView addAction:firstAction];
    [alertView addAction:secondAction];
    [view presentViewController:alertView animated:YES completion:nil];
}

+(void) alertControllerSignUpWithStyle:(UIAlertControllerStyle)style  title:(NSString*)title message:(NSString*)message firstButton:(NSString*)firstButtonTitle firstHandler:(void (^)(UIAlertAction *action))firstHandler secondButton:(NSString*)secondButtonTitle secondHandler:(void (^)(UIAlertAction *action))secondHandler inView:(UIViewController*)view withDelegate:(id)delegate {
    
    UIAlertController *alertView = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:style];
    
    UIAlertAction *firstAction = [UIAlertAction actionWithTitle:firstButtonTitle style:UIAlertActionStyleDefault handler:firstHandler];
    UIAlertAction *secondAction = [UIAlertAction actionWithTitle:secondButtonTitle style:UIAlertActionStyleCancel handler:secondHandler];
    
    //userName textField
    [alertView addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Username";
        textField.delegate = delegate;
    }];
    
    //password texfield
    [alertView addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Password";
        textField.secureTextEntry = YES;
        textField.delegate = delegate;
    }];
    
    
    //password texfield
    [alertView addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Confirm Password";
        textField.secureTextEntry = YES;
        textField.delegate = delegate;
    }];
    //Check password textfield
    [alertView addAction:firstAction];
    [alertView addAction:secondAction];
    [view presentViewController:alertView animated:YES completion:nil];
}

@end

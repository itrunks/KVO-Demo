//
//  FirstViewController.m
//  KVO
//
//  Created by Jay Versluis on 09/10/2015.
//  Copyright © 2015 Pinkstone Pictures LLC. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController () <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (nonatomic, strong) NSString *theMessage;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // grab a reference to the second view controller
    SecondViewController *second = self.tabBarController.viewControllers.lastObject;
    [self addObserver:second forKeyPath:@"theMessage" options:NSKeyValueObservingOptionNew context:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Text Field Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    // make sure to set the value using setProperty
    // rather than dot notation
    [self setTheMessage:textField.text];
    
    [textField resignFirstResponder];
    return YES;
}

@end

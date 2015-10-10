//
//  SecondViewController.m
//  KVO
//
//  Created by Jay Versluis on 09/10/2015.
//  Copyright © 2015 Pinkstone Pictures LLC. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    
    NSString *message = [(NSString *)object valueForKey:@"theMessage"];
    NSLog(@"The message was %@", message);
    
    // if implemented in the parent class, it can't hurt to call this:
    [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
}

@end

//
//  ThirdViewController.m
//  WillAppearTest
//
//  Created by Don Mag on 3/20/20.
//  Copyright © 2020 Don Mag. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.titleLabel.text = @"Third Pushed View Controller";
	[self.pushButton setHidden:YES];
	
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	NSLog(@"%s", __PRETTY_FUNCTION__);
}

@end

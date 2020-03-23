//
//  FirstViewController.m
//  WillAppearTest
//
//  Created by Don Mag on 3/20/20.
//  Copyright © 2020 Don Mag. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.titleLabel.text = @"First Pushed View Controller";
	[self.pushButton setTitle:@"Push to Second VC" forState:UIControlStateNormal];
	
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)pushTapped {
	SecondViewController *vc = [SecondViewController new];
	[self.navigationController pushViewController:vc animated:YES];
}

@end

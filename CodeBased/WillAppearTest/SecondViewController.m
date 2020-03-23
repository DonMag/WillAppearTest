//
//  SecondViewController.m
//  WillAppearTest
//
//  Created by Don Mag on 3/20/20.
//  Copyright © 2020 Don Mag. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.titleLabel.text = @"Second Pushed View Controller";
	[self.pushButton setTitle:@"Push to Third VC" forState:UIControlStateNormal];
	
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)pushTapped {
	ThirdViewController *vc = [ThirdViewController new];
	[self.navigationController pushViewController:vc animated:YES];
}

@end

//
//  RootViewController.m
//  WillAppearTest
//
//  Created by Don Mag on 3/23/20.
//  Copyright © 2020 Don Mag. All rights reserved.
//

#import "RootViewController.h"
#import "FirstViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.titleLabel.text = @"Root View Controller";
	[self.pushButton setTitle:@"Push to First VC" forState:UIControlStateNormal];
	
	[self.popButton setHidden:YES];
	[self.popToRootButton setHidden:YES];
	
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	NSLog(@"%s", __PRETTY_FUNCTION__);	
}

- (void)pushTapped {
	FirstViewController *vc = [FirstViewController new];
	[self.navigationController pushViewController:vc animated:YES];
}

@end

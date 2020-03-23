//
//  FirstViewController.m
//  WillAppearTest
//
//  Created by Don Mag on 3/20/20.
//  Copyright © 2020 Don Mag. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (IBAction)pushTap:(id)sender {
	UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"secondVC"];
	[self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)popTap:(id)sender {
	[self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)popToRootTap:(id)sender {
	[self.navigationController popToRootViewControllerAnimated:YES];
}

@end

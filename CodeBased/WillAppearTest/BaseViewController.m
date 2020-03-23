//
//  BaseViewController.m
//  WillAppearTest
//
//  Created by Don Mag on 3/23/20.
//  Copyright © 2020 Don Mag. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.view.backgroundColor = [UIColor colorWithRed:1.0 green:0.75 blue:0.5 alpha:1.0];
    
	_titleLabel = [UILabel new];
	_titleLabel.textAlignment = NSTextAlignmentCenter;
	
	_pushButton = [UIButton new];
	_popButton = [UIButton new];
	_popToRootButton = [UIButton new];
	
	_stackView = [[[UIStackView alloc] init] initWithArrangedSubviews:@[_titleLabel, _pushButton, _popButton, _popToRootButton]];
	
	_stackView.translatesAutoresizingMaskIntoConstraints = NO;
	
	_stackView.axis = UILayoutConstraintAxisVertical;
	_stackView.alignment = UIStackViewAlignmentFill;
	_stackView.distribution = UIStackViewDistributionFill;
	_stackView.spacing = 32.0;
	
	[self.view addSubview:_stackView];
	
	// respect safeArea
	UILayoutGuide *g = self.view.layoutMarginsGuide;
	
	[NSLayoutConstraint activateConstraints:@[
		
		[_stackView.leadingAnchor constraintEqualToAnchor:g.leadingAnchor constant:20.0],
		[_stackView.trailingAnchor constraintEqualToAnchor:g.trailingAnchor constant:-20.0],
		[_stackView.centerYAnchor constraintEqualToAnchor:g.centerYAnchor],
		
	]];

	for (UIButton *b in @[_pushButton, _popButton, _popToRootButton]) {
		b.backgroundColor = [UIColor colorWithWhite:0.5 alpha:1.0];
	}
	
	[_popButton setTitle:@"Pop" forState:UIControlStateNormal];
	[_popToRootButton setTitle:@"Pop to Root" forState:UIControlStateNormal];
	
	[_pushButton addTarget:self action:@selector(pushTapped) forControlEvents:UIControlEventTouchUpInside];
	[_popButton addTarget:self action:@selector(popTapped) forControlEvents:UIControlEventTouchUpInside];
	[_popToRootButton addTarget:self action:@selector(popToRootTapped) forControlEvents:UIControlEventTouchUpInside];
	
}

- (void) pushTapped {
	
}

- (void) popTapped {
	[self.navigationController popViewControllerAnimated:YES];
}

- (void) popToRootTapped {
	[self.navigationController popToRootViewControllerAnimated:YES];
}

@end

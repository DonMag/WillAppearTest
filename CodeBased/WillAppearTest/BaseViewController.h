//
//  BaseViewController.h
//  WillAppearTest
//
//  Created by Don Mag on 3/23/20.
//  Copyright © 2020 Don Mag. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseViewController : UIViewController

@property (strong, nonatomic) UILabel *titleLabel;

@property (strong, nonatomic) UIButton *pushButton;
@property (strong, nonatomic) UIButton *popButton;
@property (strong, nonatomic) UIButton *popToRootButton;

@property (strong, nonatomic) UIStackView *stackView;

- (void) pushTapped;
- (void) popTapped;
- (void) popToRootTapped;

@end

NS_ASSUME_NONNULL_END

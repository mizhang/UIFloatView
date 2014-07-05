//
//  FloatViewController.h
//  UISecondView
//
//  Created by Mi on 7/4/14.
//  Copyright (c) 2014 Trilogy. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol floatViewDismissDelegate

-(IBAction) swipeToDismiss: (id)sender;

@end

@interface FloatViewController : UIViewController

@property (weak) id<floatViewDismissDelegate> delegate;

@end

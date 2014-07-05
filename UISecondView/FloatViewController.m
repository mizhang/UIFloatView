//
//  FloatViewController.m
//  UISecondView
//
//  Created by Mi on 7/4/14.
//  Copyright (c) 2014 Trilogy. All rights reserved.
//

#import "FloatViewController.h"

@interface FloatViewController ()

- (IBAction)swipeToDismiss:(id)sender;

@property (weak) id<floatViewDismissDelegate> delegate;

@end

@implementation FloatViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _delegate = [self parentViewController];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)swipeToDismiss:(id)sender{
    [self.view removeFromSuperview];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

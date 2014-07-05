//
//  baseViewController.m
//  UISecondView
//
//  Created by Mi on 7/4/14.
//  Copyright (c) 2014 Trilogy. All rights reserved.
//

#import "baseViewController.h"

@interface baseViewController ()

-(IBAction)clickedTouched:(id)sender;

@end

@implementation baseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
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

- (void) try {
    UIVisualEffect * blurEffect = [ UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIVisualEffectView * visualEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    
    visualEffectView.frame = self.view.bounds;
    
    [self.view addSubview: visualEffectView];
}

- (IBAction) clickedTouched:(id)sender {
    
   // floatViewController * floatController = [floatViewController new];
  //  self.delegate = floatController;
  //  [self presentViewController:floatController animated:YES completion:nil];
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

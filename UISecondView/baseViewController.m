//
//  baseViewController.m
//  UISecondView
//
//  Created by Mi on 7/4/14.
//  Copyright (c) 2014 Trilogy. All rights reserved.
//

#import "baseViewController.h"



@interface baseViewController ()

@property (nonatomic, strong) UIImageView * blurViewImage;

-(IBAction)clickedTouched:(id)sender;

@end

@implementation baseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    FloatViewController * floatViewController = [[self childViewControllers] firstObject];
    floatViewController.delegate = self;
    // Custom initialization
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) try {
    
    //[self addChildViewController:[[FloatViewController alloc] init]];
    /**  iOS8 effect
    UIVisualEffect * blurEffect = [ UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIVisualEffectView * visualEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    
    visualEffectView.frame = self.view.bounds;
    
    [self.view addSubview: visualEffectView];
     */
    
    
    UIGraphicsBeginImageContext(self.view.bounds.size);
    [self.view drawViewHierarchyInRect:self.view.bounds afterScreenUpdates:YES];
    UIImage *snapshotImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    _blurViewImage.image = [self getBlurImageWithUIImage:snapshotImage];
    
    [self.view addSubview:_blurViewImage];
    
    

}

- (IBAction) clickedTouched:(id)sender {
    
    [self try];
    
    FloatViewController * floatController = [[self childViewControllers] firstObject];
    CGFloat  width = floatController.view.frame.size.width;
    CGFloat  height = floatController.view.frame.size.height;
    floatController.view.frame = CGRectMake( 42, 0, width, height );
    
    [self.view addSubview:floatController.view];
    
    
    
   // floatViewController * floatController = [floatViewController new];
  //  self.delegate = floatController;
  //  [self presentViewController:floatController animated:YES completion:nil];
}

- (UIImage *) getBlurImageWithUIImage: (UIImage*) originalImage {
    CIContext *context = [CIContext contextWithOptions:nil];
    
    CIImage *inputImage = [[CIImage alloc] initWithImage:originalImage];
    
    CIFilter *filter = [CIFilter filterWithName:@"CIGaussianBlur"];
    
    [filter setValue:inputImage forKey:kCIInputImageKey];
    
    [filter setValue:[NSNumber numberWithFloat:3.0f] forKey:@"inputRadius"];
    
    CIImage *result = [filter valueForKey:kCIOutputImageKey];
    
    CGImageRef cgImage = [context createCGImage:result fromRect:[inputImage extent]];
    
    return [UIImage imageWithCGImage:cgImage];
}

- (IBAction) swipeToDismiss:(id)sender {
    [[[[self childViewControllers] firstObject] view] removeFromSuperview];
    [_blurViewImage removeFromSuperview];
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

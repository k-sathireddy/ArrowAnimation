//
//  ViewController.m
//  ArrowAnimation
//
//  Created by Enterpi mini mac on 9/16/16.
//  Copyright © 2016 Enterpi mini mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *arrowImageView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *arrowLeadingSpaceConstraint;
- (IBAction)goButtonTapped:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:YES];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goButtonTapped:(id)sender {
    
   // self.arrowLeadingSpaceConstraint.constant = 310;
    
    self.arrowImageView.frame = CGRectMake(310, 574, 20, 30);
    
    float degrees = 270; //the value in degrees
    self.arrowImageView.transform = CGAffineTransformMakeRotation(degrees * M_PI/180);
    
    
    
    [UIView animateWithDuration:0.2
                          delay:0.0
                        options: UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         
                         self.arrowImageView.frame = CGRectMake(100, 574, 20, 30);
                         
                         self.arrowImageView.transform = CGAffineTransformMakeRotation(0 * M_PI/180);
                     }
                     completion:^(BOOL finished){
                         
                         [UIView animateWithDuration:0.2
                                               delay:0.0
                                             options: UIViewAnimationOptionCurveEaseOut
                                          animations:^{
                                              
                                              self.arrowImageView.frame = CGRectMake(50, 150, 20, 30);
                                              
                                              
                                          }
                                          completion:^(BOOL finished){
                                              
                                              
                                              [UIView animateWithDuration:0.1
                                                                    delay:0.0
                                                                  options: UIViewAnimationOptionCurveEaseOut
                                                               animations:^{
                                                                        self.arrowImageView.frame = CGRectMake(80, 100, 20, 30);
                                                                   
                                                               }
                                                               completion:nil];

                                        }];

                     }];
    

}
@end

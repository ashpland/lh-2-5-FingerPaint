//
//  ViewController.m
//  FingerPaint
//
//  Created by Andrew on 2017-10-15.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "ViewController.h"
#import "PaintView.h"

@interface ViewController ()
@property (strong, nonatomic) PaintView *paintView;
@property (strong, nonatomic) UIButton *currentColorButton;
@property (weak, nonatomic) IBOutlet UIButton *buttonForNewScreen;
- (IBAction)colorButton:(UIButton *)sender;
- (IBAction)clearScreenButton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *redButton;




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self setupUI];

    self.buttonForNewScreen.titleLabel.adjustsFontSizeToFitWidth = YES;
    self.buttonForNewScreen.titleLabel.minimumScaleFactor = 0.5;
    
    self.paintView = self.view.subviews[0];
    
    self.currentColorButton = self.redButton;

}



- (IBAction)colorButton:(UIButton *)sender {
    [self.currentColorButton setTitle:@"" forState:UIControlStateNormal];
    self.paintView.currentColor = sender.backgroundColor;
    self.currentColorButton = sender;
    [self.currentColorButton setTitle:@"✔️" forState:UIControlStateNormal];
}

- (IBAction)clearScreenButton:(UIButton *)sender {
    [self.paintView clearCanvas];
}
@end

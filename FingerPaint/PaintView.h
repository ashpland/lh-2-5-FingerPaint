//
//  PaintView.h
//  FingerPaint
//
//  Created by Andrew on 2017-10-15.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PaintView : UIView

@property (nonatomic, strong) UIColor *currentColor;

-(void)clearCanvas;

@end

//
//  LineModel.h
//  FingerPaint
//
//  Created by Andrew on 2017-10-15.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LineSegmentModel.h"
@import UIKit;

@interface LineModel : NSObject

@property (nonatomic, strong) UIColor *lineColor;
@property (nonatomic, strong) NSMutableArray<LineSegmentModel *> *lineSegments;

-(void)addToLineFrom:(CGPoint)firstPoint to:(CGPoint)secondPoint;

- (instancetype)initWithColor:(UIColor *)color;


@end

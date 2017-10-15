//
//  LineSegmentModel.h
//  FingerPaint
//
//  Created by Andrew on 2017-10-15.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;


@interface LineSegmentModel : NSObject

@property (nonatomic, assign, readonly) CGPoint firstPoint;
@property (nonatomic, assign, readonly) CGPoint secondPoint;

- (instancetype)initWithFirstPoint:(CGPoint)first
                       secondPoint:(CGPoint)second;


@end

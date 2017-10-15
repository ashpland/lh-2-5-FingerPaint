//
//  LineSegmentModel.m
//  FingerPaint
//
//  Created by Andrew on 2017-10-15.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "LineSegmentModel.h"

@implementation LineSegmentModel

-(instancetype)initWithFirstPoint:(CGPoint)first secondPoint:(CGPoint)second
{
    self = [super init];
    if (self) {
        _firstPoint = first;
        _secondPoint = second;
    }
    return self;}



@end

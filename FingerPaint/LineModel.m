//
//  LineModel.m
//  FingerPaint
//
//  Created by Andrew on 2017-10-15.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "LineModel.h"

@implementation LineModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _lineSegments = [NSMutableArray new];
    }
    return self;
}

- (instancetype)initWithColor:(UIColor *)color
{
    self = [super init];
    if (self) {
        _lineSegments = [NSMutableArray new];
        _lineColor = color;
    }
    return self;
}



-(void)addToLineFrom:(CGPoint)firstPoint to:(CGPoint)secondPoint
{
    LineSegmentModel *newSegment = [[LineSegmentModel alloc] initWithFirstPoint:firstPoint secondPoint:secondPoint];
    [self.lineSegments addObject:newSegment];
}

@end

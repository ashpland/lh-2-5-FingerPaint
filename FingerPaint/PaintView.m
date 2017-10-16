//
//  PaintView.m
//  FingerPaint
//
//  Created by Andrew on 2017-10-15.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "PaintView.h"
#import "LineModel.h"

@interface PaintView ()

@property (nonatomic, strong) LineModel *currentLine;
@property (nonatomic, strong) NSMutableArray<LineModel *> *lineArray;

@end

@implementation PaintView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _currentLine = [LineModel new];
        _lineArray = [NSMutableArray new];
        _currentColor = [UIColor colorWithRed:0.580 green:0.067 blue:0.000 alpha:1.00];
    }
    return self;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = touches.anyObject;
    self.currentLine = [[LineModel alloc] initWithColor:self.currentColor];
    CGPoint first = [touch previousLocationInView:self];
    [self.currentLine addToLineFrom:first to:first];
    [self.lineArray addObject:self.currentLine];
    [self setNeedsDisplay];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = touches.anyObject;
    CGPoint second = [touch locationInView:self];
    CGPoint first = [touch previousLocationInView:self];
    [self.currentLine addToLineFrom:first to:second];
    [self setNeedsDisplay];
}




-(void)drawRect:(CGRect)rect
{
    for (LineModel *line in self.lineArray) {
        UIBezierPath *path = [UIBezierPath bezierPath];
        path.lineWidth = 5.0;
        path.lineCapStyle = kCGLineCapRound;
        [line.lineColor setStroke];
        
        for (LineSegmentModel *segment in line.lineSegments) {
            if (CGPointEqualToPoint(segment.firstPoint, segment.secondPoint)) {
                [path moveToPoint:segment.firstPoint];
                continue;
            }
            [path addLineToPoint:segment.firstPoint];
            [path addLineToPoint:segment.secondPoint];
        }
        [path stroke];
    }
}


-(void)clearCanvas
{
    [self.lineArray removeAllObjects];
    [self setNeedsDisplay];
}


@end

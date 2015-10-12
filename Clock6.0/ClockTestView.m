//
//  ClockTestView.m
//  Clock6.0
//
//  Created by 廖晓飞 on 9/19/15.
//  Copyright (c) 2015 zzit. All rights reserved.
//

#import "ClockTestView.h"
#import "Hand.h"
#import "Scales.h"

@implementation ClockTestView


- (void)drawRect:(CGRect)rect
{
    CGPoint centerPoint = CGPointMake(100, 100);
    
    Hand *hourHand = [Hand handWithLength:50 thick:5 color:[UIColor redColor]];
    [hourHand drawAt:centerPoint];
    
    Hand *minuteHand = [Hand handWithLength:75];
    [minuteHand setHandWithLength:35 thick:10 color:[UIColor greenColor]];
    [minuteHand rotateHandToAngle:90];
    [minuteHand drawAt:centerPoint];
    
    Scales *scales = [Scales scalesWithCount:60 thick:1 length:5 color:[UIColor blackColor]];
    [scales setStartAngle:45];
    [scales drawAt:centerPoint radius:100];
    


    
    
}
 

@end

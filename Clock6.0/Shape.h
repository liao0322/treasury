//
//  Shape.h
//  模块化时钟
//
//  Created by 廖晓飞 on 15/8/8.
//  Copyright (c) 2015年 zzit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Shape : NSObject


+ (void)setStrokeColocWithRed:(float)r withGreen:(float)g withBlue:(float)b withAlpha:(float)a;
+ (void)setStrokeColocWithRed:(float)r withGreen:(float)g withBlue:(float)b;
+ (void)setFillColorWithRed:(float)r withGreen:(float)g withBlue:(float)b withAlpha:(float)a;
+ (void)setFillColorWithRed:(float)r withGreen:(float)g withBlue:(float)b;
+ (void)setStrokeThick:(float)thick;

+ (void)drawRectWithX:(float)x withY:(float)y withWidth:(float)width withHeight:(float)height;
+ (void)drawCircleWithX:(float)x withY:(float)y withR:(float)r;
+ (void)drawSegmentWithX0:(float)x0 wittY0:(float)y0 withEndX:(float)endX withEndY:(float)endY;
+ (void)drawLineWithColorR:(float)r ColorG:(float)g ColorB:(float)b ColorAlpha:(float)a withThick:(float)aThick withPointFrom:(CGPoint)fromPt withLen:(float)len withAngle:(float)angle;



+ (void)setStrokeColorWithRed:(float)red Blue:(float)blue green:(float)green alpha:(float)alpha;

+ (void)drawLineWithStartPoint:(CGPoint)sp endPoint:(CGPoint)ep color:(UIColor *)color thick:(float)thick;

+ (void)drawCircleWithRaidus:(float)radius centerX:(float)x centerY:(float)y;
@end

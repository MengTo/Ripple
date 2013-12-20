//
//  UIView+SimpleMotionEffects.h
//  ExampleProject
//
//  Created by Markus Emrich on 17.11.13.
//  Copyright (c) 2013 Markus Emrich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (SimpleMotionEffects)

- (void)addMotionEffectWithMovement:(CGPoint)movement;

- (void)addMotionEffectOnHorizontalTilt:(CGPoint)horizontalMovement
                         onVerticalTilt:(CGPoint)verticalMovement;

- (void)addMotionEffectWithType:(UIInterpolatingMotionEffectType)type
                        keyPath:(NSString*)keyPath
                          value:(CGFloat)value;

- (void)addMotionEffectWithType:(UIInterpolatingMotionEffectType)type
                        keyPath:(NSString*)keyPath
                       minValue:(CGFloat)minValue
                       maxValue:(CGFloat)maxValue;

@end

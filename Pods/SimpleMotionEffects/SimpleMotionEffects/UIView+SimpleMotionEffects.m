//
//  UIView+SimpleMotionEffects.m
//  ExampleProject
//
//  Created by Markus Emrich on 17.11.13.
//  Copyright (c) 2013 Markus Emrich. All rights reserved.
//

#import "UIView+SimpleMotionEffects.h"

@implementation UIView (SimpleMotionEffects)

- (void)addMotionEffectWithMovement:(CGPoint)movement;
{
    [self addMotionEffectWithType:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis keyPath:@"center.x" value:movement.x];
    [self addMotionEffectWithType:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis keyPath:@"center.y" value:movement.y];
}

- (void)addMotionEffectOnHorizontalTilt:(CGPoint)horizontalMovement onVerticalTilt:(CGPoint)verticalMovement;
{
    [self addMotionEffectWithType:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis keyPath:@"center.x" value:horizontalMovement.x];
    [self addMotionEffectWithType:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis keyPath:@"center.y" value:horizontalMovement.y];
    [self addMotionEffectWithType:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis keyPath:@"center.x" value:verticalMovement.x];
    [self addMotionEffectWithType:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis keyPath:@"center.y" value:verticalMovement.y];
}

- (void)addMotionEffectWithType:(UIInterpolatingMotionEffectType)type keyPath:(NSString*)keyPath value:(CGFloat)value;
{
    [self addMotionEffectWithType:type keyPath:keyPath minValue:-value maxValue:value];
}

- (void)addMotionEffectWithType:(UIInterpolatingMotionEffectType)type keyPath:(NSString*)keyPath minValue:(CGFloat)minValue maxValue:(CGFloat)maxValue;
{
    if (![self respondsToSelector:@selector(addMotionEffect:)]) return; // ios7 check
    if ((minValue == 0 && maxValue == 0) || keyPath == nil) return; // check needed values
    
	UIInterpolatingMotionEffect *effect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:keyPath type:type];
	effect.minimumRelativeValue = @(minValue);
	effect.maximumRelativeValue = @(maxValue);
	[self addMotionEffect:effect];
}

@end

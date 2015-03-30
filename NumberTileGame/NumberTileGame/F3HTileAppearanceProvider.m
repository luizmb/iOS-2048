//
//  F3HTileAppearanceProvider.m
//  NumberTileGame
//
//  Created by Austin Zheng on 3/22/14.
//
//

#import "F3HTileAppearanceProvider.h"

@implementation F3HTileAppearanceProvider

- (UIColor *)tileColorForValue:(NSUInteger)value {
    switch (value) {
        case 2:
            return [UIColor colorWithRed:238./255. green:228./255. blue:218./255. alpha:1];
        case 4:
            return [UIColor colorWithRed:237./255. green:224./255. blue:200./255. alpha:1];
        case 8:
            return [UIColor colorWithRed:242./255. green:177./255. blue:121./255. alpha:1];
        case 16:
            return [UIColor colorWithRed:245./255. green:149./255. blue:99./255. alpha:1];
        case 32:
            return [UIColor colorWithRed:246./255. green:124./255. blue:95./255. alpha:1];
        case 64:
            return [UIColor colorWithRed:246./255. green:94./255. blue:59./255. alpha:1];
        case 128:
            return [UIColor colorWithRed:240./255. green:160./255. blue:85./255. alpha:1];
        case 256:
            return [UIColor colorWithRed:240./255. green:150./255. blue:80./255. alpha:1];
        case 512:
            return [UIColor colorWithRed:242./255. green:120./255. blue:59./255. alpha:1];
        case 1024:
            return [UIColor colorWithRed:246./255. green:100./255. blue:30./255. alpha:1];
        case 2048:
            return [UIColor colorWithRed:255./255. green:0./255. blue:0./255. alpha:1];
        case 4096:
            return [UIColor colorWithRed:205/255. green:20./255. blue:20./255. alpha:1];
        case 8192:
            return [UIColor colorWithRed:175./255. green:20./255. blue:20./255. alpha:1];
        case 16384:
            return [UIColor colorWithRed:145./255. green:20./255. blue:20./255. alpha:1];
        case 32768:
            return [UIColor colorWithRed:0./255. green:0./255. blue:0./255. alpha:1];
        default:
            return [UIColor blackColor];
    }
}

- (UIColor *)numberColorForValue:(NSUInteger)value {
    switch (value) {
        case 2:
        case 4:
            return [UIColor colorWithRed:119./255. green:110./255. blue:101./255. alpha:1];
        default:
            return [UIColor whiteColor];
    }
}

- (UIFont *)fontForNumbers:(NSUInteger)value {
    if (value < 1024) {
        return [UIFont fontWithName:@"HelveticaNeue-Bold" size:22];
    }
    if (value < 16384) {
        return [UIFont fontWithName:@"HelveticaNeue-Bold" size:20];
    }
    return [UIFont fontWithName:@"HelveticaNeue-Bold" size:16];
}

@end

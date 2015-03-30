//
//  F3HTileAppearanceProvider.h
//  NumberTileGame
//
//  Created by Austin Zheng on 3/22/14.
//
//

#import <Foundation/Foundation.h>

@protocol F3HTileAppearanceProviderProtocol <NSObject>

- (UIColor *)tileColorForValue:(NSUInteger)value;
- (UIColor *)numberColorForValue:(NSUInteger)value;
- (UIFont *)fontForNumbers:(NSUInteger)value;

@end

@interface F3HTileAppearanceProvider : NSObject <F3HTileAppearanceProviderProtocol>

@end

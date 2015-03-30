//
//  F3HGameModelDelegate.h
//  NumberTileGame
//
//  Created by Luiz Rodrigo Martins Barbosa on 29/03/15.
//
//

#import <Foundation/Foundation.h>

@protocol F3HGameModelProtocol <NSObject>

@property (nonatomic, readonly) NSInteger score;
@property (nonatomic, strong) NSMutableArray *gameState;
@property (nonatomic) NSUInteger dimension;
@property (nonatomic) NSUInteger winValue;

@end

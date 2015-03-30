//
//  F3HGameModel.h
//  NumberTileGame
//
//  Created by Austin Zheng on 3/23/14.
//
//

#import <Foundation/Foundation.h>
#import "F3HGameModelProtocol.h"
#import "F3HGameModelDelegateProtocol.h"

typedef enum {
    F3HMoveDirectionUp = 0,
    F3HMoveDirectionDown,
    F3HMoveDirectionLeft,
    F3HMoveDirectionRight
} F3HMoveDirection;

@interface F3HGameModel : NSObject<F3HGameModelProtocol>

@property (nonatomic, readonly) NSInteger score;
@property (nonatomic, strong) NSMutableArray *gameState;
@property (nonatomic) NSUInteger dimension;
@property (nonatomic) NSUInteger winValue;


+ (instancetype)gameModelWithDimension:(NSUInteger)dimension
                              winValue:(NSUInteger)value
                              delegate:(id<F3HGameModelDelegateProtocol>)delegate;

- (void)reset;

- (void)insertAtRandomLocationTileWithValue:(NSUInteger)value;

- (void)insertTileWithValue:(NSUInteger)value
                atIndexPath:(NSIndexPath *)path;

- (void)performMoveInDirection:(F3HMoveDirection)direction
               completionBlock:(void(^)(BOOL))completion;

- (BOOL)gameOver;
- (NSIndexPath *)userHasWon;

@end


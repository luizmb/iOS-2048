//
//  F3HGameModelProtocol.h
//  NumberTileGame
//
//  Created by Luiz Rodrigo Martins Barbosa on 29/03/15.
//
//

#import <Foundation/Foundation.h>
#import "F3HGameModelProtocol.h"

@protocol F3HGameModelDelegateProtocol

- (void) gameWithModel:(id<F3HGameModelProtocol>)gameModel
   didChangeTheScoreTo:(NSInteger)newScore;

- (void)    gameWithModel:(id<F3HGameModelProtocol>)gameModel
 didMoveTileFromIndexPath:(NSIndexPath *)fromPath
              toIndexPath:(NSIndexPath *)toPath
                 newValue:(NSUInteger)value;

- (void) gameWithModel:(id<F3HGameModelProtocol>)gameModel
        didMoveTileOne:(NSIndexPath *)startA
               tileTwo:(NSIndexPath *)startB
           toIndexPath:(NSIndexPath *)end
              newValue:(NSUInteger)value;

- (void)    gameWithModel:(id<F3HGameModelProtocol>)gameModel
 didInsertTileAtIndexPath:(NSIndexPath *)path
                    value:(NSUInteger)value;

@end

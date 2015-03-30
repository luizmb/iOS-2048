//
//  DVCRepository.m
//  NumberTileGame
//
//  Created by Luiz Rodrigo Martins Barbosa on 29/03/15.
//
//

#import "DVCRepository.h"
#import "F3HTileModel.h"

@interface DVCRepository()

@property (nonatomic, strong) NSArray *currentBoard;
@property (nonatomic, strong) NSString *filePath;

@end

@implementation DVCRepository

-(instancetype)init {
    self = [super init];
    
    if (self) {
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documentsDirectory = [paths objectAtIndex:0];
        self.filePath = [documentsDirectory stringByAppendingPathComponent:@"lastBoard.plist"];
        
        NSFileManager *fileManager = [NSFileManager defaultManager];
        
        if ([fileManager fileExistsAtPath:self.filePath]) {
            NSLog(@"%@", [NSString stringWithContentsOfFile:self.filePath encoding:NSUTF8StringEncoding error:NULL]);
            self.currentBoard = [[NSMutableArray alloc]initWithContentsOfFile:self.filePath];
        } else {
            self.currentBoard = nil;
        }
        
    }
    return self;
}

- (void) saveGameStatus:(id<F3HGameModelProtocol>) gameModel {
    NSMutableArray *tiles = [[NSMutableArray alloc] initWithCapacity:[gameModel.gameState count]];
    
    for(int i = 0; i < [gameModel.gameState count]; i ++) {
        NSUInteger value = ((F3HTileModel *) gameModel.gameState[i]).empty
        ? 0
        : ((F3HTileModel *) gameModel.gameState[i]).value;
        [tiles addObject:@(value)];
    }
    
    self.currentBoard = [tiles copy];
    NSLog(@"%@", self.currentBoard);
    [self.currentBoard writeToFile:self.filePath atomically:YES];
}

- (void) gameWithModel:(id<F3HGameModelProtocol>)gameModel didInsertTileAtIndexPath:(NSIndexPath *)path value:(NSUInteger)value {
    [self saveGameStatus:gameModel];
}

- (void) gameWithModel:(id<F3HGameModelProtocol>)gameModel didChangeTheScoreTo:(NSInteger)newScore { }
- (void) gameWithModel:(id<F3HGameModelProtocol>)gameModel didMoveTileFromIndexPath:(NSIndexPath *)fromPath toIndexPath:(NSIndexPath *)toPath newValue:(NSUInteger)value { }
- (void) gameWithModel:(id<F3HGameModelProtocol>)gameModel didMoveTileOne:(NSIndexPath *)startA tileTwo:(NSIndexPath *)startB toIndexPath:(NSIndexPath *)end newValue:(NSUInteger)value { }

@end

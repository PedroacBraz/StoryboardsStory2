//
//  Player.h
//  Ratings
//
//  Created by Mac Mini Beta on 16/12/16.
//  Copyright © 2016 Mac Mini Beta. All rights reserved.
//

#import <Foundation/Foundation.h>
// Player Class Interface
@interface Player : NSObject

@property (nonatomic, copy) NSString *name; // Player's name
@property (nonatomic, copy) NSString *game; // Player's game
@property (nonatomic,assign) int rating;    // Player's rating in the game. From 1 to 5.

@end

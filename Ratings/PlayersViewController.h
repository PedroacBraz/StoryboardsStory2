//
//  PlayersViewControllerTableViewController.h
//  Ratings
//
//  Created by Mac Mini Beta on 16/12/16.
//  Copyright © 2016 Mac Mini Beta. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PlayerDetailsViewController.h"
//Player class Interface
@interface PlayersViewController : UITableViewController <PlayerDetailsViewControllerDelegate>

@property (nonatomic, strong) NSMutableArray *players;

@end

//
//  GamePickViewController.h
//  Ratings
//
//  Created by Mac Mini Beta on 20/12/16.
//  Copyright © 2016 Mac Mini Beta. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GamePickViewController;

@protocol GamePickerViewControllerDelegate <NSObject>

//Calls gamePickerViewController, using a controller and calling didSelectGame, which uses a string
-(void) gamePickerViewController: (GamePickViewController *) controller didSelectGame: (NSString *)game;
@end

@interface GamePickViewController: UITableViewController

@property (nonatomic, weak) id <GamePickerViewControllerDelegate> delegate;
@property (nonatomic, strong) NSString *game;

@end

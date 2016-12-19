//
//  PlayerDetailsViewController.h
//  Ratings
//
//  Created by Mac Mini Beta on 19/12/16.
//  Copyright © 2016 Mac Mini Beta. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PlayerDetailsViewController;

@protocol  PlayerDetailsViewControllerDelegate <NSObject>

- (void)playerDetailsViewControllerDidCancel:(PlayerDetailsViewController *) controller;

- (void)playerDetailsViewControllerDidSave: (PlayerDetailsViewController *) controller;

@end

@interface  PlayerDetailsViewController : UITableViewController;

@property (nonatomic, weak) id <PlayerDetailsViewControllerDelegate> delegate;

- (IBAction)cancel :(id)sender;
- (IBAction)done :(id)sender;

@end

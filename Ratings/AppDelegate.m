//
//  AppDelegate.m
//  Ratings
//
//  Created by Mac Mini Beta on 16/12/16.
//  Copyright © 2016 Mac Mini Beta. All rights reserved.
//

#import "AppDelegate.h"
#import "Player.h"
#import "PlayersViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
{
    NSMutableArray *_players;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    _players = [NSMutableArray arrayWithCapacity:20];
    
    //Initiating a Player
    Player *player = [[Player alloc] init];
    player.name = @"Ellie";
    player.game = @"The Last of Us";
    player.rating = 5;
    //Inserting the player on the _players array
    [_players addObject:player];
    
    //Initiating a Player, this time, the player pointer was created already
    player = [[Player alloc] init];
    player.name = @"Jhon 'Soap' McTavish";
    player.game = @"CoD:MW";
    player.rating = 4;
    //Inserting the player on the _players array
    [_players addObject:player];
    
    //Initiating a Player
    player = [[Player alloc] init];
    player.name = @"Yoshi";
    player.game = @"Super Mario World";
    player.rating = 3;
    //Inserting the player on the _players array
    [_players addObject:player];
    
    //References so the controllers are able to find the players
    //Tabs acess
    UITabBarController * tabBarController = (UITabBarController *) self.window.rootViewController;
    //Then we get the navigator controller inside it
    UINavigationController *navigationController = [tabBarController viewControllers][0];
    //And then again, the player view inside the navigator
    PlayersViewController* playersViewController = [navigationController viewControllers][0];
    playersViewController.players = _players;
    
    
    return YES;	
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end

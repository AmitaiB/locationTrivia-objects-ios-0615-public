//
//  FISAppDelegate.m
//  locationTrivia-Dictionaries
//
//  Created by Joe Burgess on 5/13/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISAppDelegate.h"
#import "FISLocation.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

//    NSDictionary *location =  @{@"name": @"Status of Liberty",
//                                @"longitude": @71.324,
//                                @"latitude": @-31.412};
//    NSLog(@"%@",[self shortenLocationNameWithLocation:location ToCount:3]);
//
//    NSLog(@"%@",[self createLocationWithName:@"Joe" Latitude:@32 Longitude:@43]);

    FISLocation *location = [[FISLocation alloc] initWithLocationName:@"Status of Liberty" withLatitude:@71.324 withLongitude:@-31.412];
    
    return YES;
}

- (FISLocation *)createLocationWithName:(NSString *)name Latitude:(NSNumber *)latitude Longitude:(NSNumber *)longitude
{
    return [[FISLocation alloc] initWithLocationName:name withLatitude:latitude withLongitude:longitude];
//    return @{@"name":name,
//             @"latitude":latitude,
//             @"longitude":longitude};
}

-(NSArray *)getLocationNamesWithLocations:(NSArray *)locations
{
    NSMutableArray *resultArray = [[NSMutableArray alloc] init];
    for (FISLocation *location in locations) {
        [resultArray addObject:location.name];
    }

    return resultArray;
}

- (FISLocation *)searchForLocationName:(NSString *)name inLocations:(NSArray *)locations
{
    for (FISLocation *location in locations) {
        if ([location.name isEqualToString:name]) {
            return location;
        }
    }
    return nil;
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

//
//  FISAppDelegate.h
//  locationTrivia-Dictionaries
//
//  Created by Joe Burgess on 5/13/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISLocation.h"

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (FISLocation *)createLocationWithName:(NSString *)name Latitude:(NSNumber *)latitude Longitude:(NSNumber *)longitude;
- (NSArray *)getLocationNamesWithLocations:(NSArray *)locations;
- (BOOL)verifyLocation:(FISLocation *)location;
- (FISLocation *)searchForLocationName:(NSString *)name inLocations:(NSArray *)locations;

@end

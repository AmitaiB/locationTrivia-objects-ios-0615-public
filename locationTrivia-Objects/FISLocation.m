//
//  FISLocation.m
//  locationTrivia-Objects
//
//  Created by Amitai Blickstein on 6/9/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISLocation.h"

@implementation FISLocation

-(instancetype)initWithLocationName:(NSString *)name
                       withLatitude:(NSNumber *)latitude
                      withLongitude:(NSNumber*)longitutde {
    self = [super init];
    if (self) {
            _name = name;
        _latitude = latitude;
        _longitude = longitutde;
    }
    return self;
}

-(instancetype)init {
    return [self initWithLocationName:@"Neverland" withLatitude:@0 withLongitude:@0];
    }


- (NSString *)shortenLocationNameWithLocation:(NSInteger)count
{
    NSString *name = self.name;
    if (count <0) {
        return name;
    }
    return [name substringToIndex:count];
}

- (BOOL) verifyLocation
{
    if (self.name && self.latitude && self.longitude) {
        return YES;
    }
    return NO;
}

- (FISTrivia *)topTrivia {
    NSInteger topLikes = 0;
    NSMutableArray *triviaStorageBin = [NSMutableArray arrayWithCapacity:1];
    
    for (FISTrivia *trivium in self.myTrivia) {
        if (trivium.likes > topLikes) {
            triviaStorageBin[0] = trivium;
            topLikes = trivium.likes;
        }
    }
    return triviaStorageBin[0];
}

@end

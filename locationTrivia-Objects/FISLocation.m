//
//  FISLocation.m
//  locationTrivia-Objects
//
//  Created by Amitai Blickstein on 6/9/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISLocation.h"

@implementation FISLocation

+(NSNumber *)absoluteValue:(NSNumber *)input {
    return [NSNumber numberWithDouble:fabs([input doubleValue])];
}


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
    return [self initWithLocationName:nil withLatitude:nil withLongitude:nil];
}


- (NSString *)shortenLocationNameWithLocation:(NSInteger)count {
    NSString *name = self.name;
    if (count <0) {
        return name;
    }
    return [name substringToIndex:count];
}

- (BOOL) verifyLocation {
    BOOL isLatValid  = NO;
    BOOL isLongValid = NO;
    BOOL isNameValid = YES;
    
    if ([self.latitude intValue] <= fabs(90.0)) {
        isLatValid  = YES;
    }
    if ([self.longitude intValue] <= fabs(180.0)) {
        isLongValid  = YES;
    }
    if ([[self.name stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length] == 0) {
        isNameValid = NO;
    }
    
    
    if (isLatValid && isLongValid && isNameValid) {
        return YES;
    }
    return NO;
}

- (NSString *)shortenedNameToLength:(NSInteger)newLength {
    if (newLength < 0) {
        return self.name;
    } else {
        return [self.name substringToIndex:newLength];
    }
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

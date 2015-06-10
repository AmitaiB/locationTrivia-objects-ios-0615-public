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
                      withLongitude:(NSNumber*)longitude {
    self = [super init];
    if (self) {
            _name = name;
        _latitude = latitude;
        _longitude = longitude;
    }
    return self;
}

-(instancetype)init {
    return [self initWithLocationName:nil withLatitude:nil withLongitude:nil];
}

- (void)selfReport:(NSNumber *)reportNumber {
    NSLog(@"\n\n\n***FISLocation object Self-Report #%@***\n\nself.name: %@\nself.latitude: %@\nself.longitude: %@\n[self verifyLocation]: ", reportNumber, self.name, self.latitude, self.longitude);
    BOOL verifyVerify = [self verifyLocation];
    NSLog(verifyVerify ? @"YES" : @"NO");
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
    
    if ([self.latitude floatValue] <= fabs(90.0)) {
        isLatValid  = YES;
    }
    if ([self.longitude floatValue] <= fabs(180.0)) {
        isLongValid  = YES;
    }
    if ([[self.name stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length] == 0) {
        isNameValid = NO;
    }
    
    
    if (isLatValid && isLongValid && isNameValid) {
        return YES;
    } else {
    return NO;
    }
}

- (NSString *)shortenedNameToLength:(NSInteger)newLength {
    NSLog(@"\nBEFORE: newLength:\n%lul", (unsigned long)newLength);
    if (newLength < 0) {
    NSLog(@"\nMIDDLE: self.name:\n%@", self.name);
        return self.name;
    } else {
    NSLog(@"\nEND: [self.name substringToIndex:(newLength)] is:\n%@", [self.name substringToIndex:(newLength)]);
        return [self.name substringToIndex:(newLength)];
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

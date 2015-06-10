//
//  FISLocation.h
//  locationTrivia-Objects
//
//  Created by Amitai Blickstein on 6/9/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISTrivia.h"

@interface FISLocation : NSObject

//@property (strong, nonatomic) NSDictionary *locationEntry;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSNumber *latitude;
@property (strong, nonatomic) NSNumber *longitude;
@property (strong, nonatomic) NSDictionary *locationEntry;
@property (strong, nonatomic) NSMutableArray *myTrivia;

+(NSNumber *)absoluteValue:(NSNumber *)input;

-(instancetype)initWithLocationName:(NSString *)name
                       withLatitude:(NSNumber *)latitude
                      withLongitude:(NSNumber*)longitutde;

-(instancetype)init;

- (NSString *)shortenLocationNameWithLocation:(NSInteger)count;
- (BOOL) verifyLocation;
- (NSString *)shortenedNameToLength:(NSInteger)newLength;

- (FISTrivia *)topTrivia;


@end

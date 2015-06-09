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
@property (strong, nonatomic) NSString *latitude;
@property (strong, nonatomic) NSString *longitude;
@property (strong, nonatomic) NSDictionary *locationEntry;
@property (strong, nonatomic) NSMutableArray *myTrivia;


-(instancetype)initWithLocationName:(NSString *)name
                       withLatitude:(NSString *)latitude
                      withLongitude:(NSString*)longitutde;

-(instancetype)init;

- (NSString *)shortenLocationNameWithLocation:(NSInteger)count;
- (BOOL) verifyLocation;

- (FISTrivia *)topTrivia;


@end

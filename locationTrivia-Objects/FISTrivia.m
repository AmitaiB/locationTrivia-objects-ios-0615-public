//
//  FISTrivia.m
//  locationTrivia-Objects
//
//  Created by Amitai Blickstein on 6/9/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISTrivia.h"

@implementation FISTrivia

-(instancetype)initWithContent:(NSString *)content Likes:(NSInteger)likes {
    self = [super init];
    if (self) {
        _content = content;
        _likes   = likes;
    }
    return self;
}

-(instancetype)initWithContent:(NSString *)content {
    self = [self initWithContent:content Likes:0];
    return self;
}

-(instancetype)init
{
    self = [self initWithContent:@""];
    return self;
}

@end

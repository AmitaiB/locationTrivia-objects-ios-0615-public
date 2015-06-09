//
//  FISTrivia.h
//  locationTrivia-Objects
//
//  Created by Amitai Blickstein on 6/9/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISTrivia : NSObject

@property (strong, nonatomic) NSString *content;
@property (nonatomic) NSInteger likes;

-(instancetype)initWithContent:(NSString *)content andLikes:(NSInteger)likes;
-(instancetype)initWithContent:(NSString *)content;

@end

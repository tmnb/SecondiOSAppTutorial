//
//  BirdSighting.m
//  BirdWatching
//
//  Created by 佐藤 友信 on 2013/07/11.
//  Copyright (c) 2013年 Tomonobu Sato. All rights reserved.
//

#import "BirdSighting.h"

@implementation BirdSighting

- (id)initWithName:(NSString *)name location:(NSString *)location date:(NSDate *)date
{
    self = [super init];
    if (self) {
        _name = name;
        _location = location;
        _date = date;
        return  self;
    }
    
    return nil;
}

@end

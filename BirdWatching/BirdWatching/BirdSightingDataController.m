//
//  BirdSightingDataController.m
//  BirdWatching
//
//  Created by 佐藤 友信 on 2013/07/11.
//  Copyright (c) 2013年 Tomonobu Sato. All rights reserved.
//

#import "BirdSightingDataController.h"
#import "BirdSighting.h"

@interface BirdSightingDataController()

- (void)initializeDefaultDataList;

@end

@implementation BirdSightingDataController

- (void)initializeDefaultDataList {
    NSMutableArray *sightingList = [[NSMutableArray alloc] init];
    self.masterBirdSightingList = sightingList;
    [self addBirdSightingWithName:@"Pigeon" location:@"Everywhere"];
}

- (void)setMasterBirdSightingList:(NSMutableArray *)newList {
    if(_masterBirdSightingList != newList) {
        _masterBirdSightingList = [newList mutableCopy];
    }
}

- (id)init {
    if(self = [super init]) {
        [self initializeDefaultDataList];
        return  self;
    }
    return nil;
}

- (NSUInteger)countOfList {
    return [self.masterBirdSightingList count];
}

- (BirdSighting *)objectInListAtIndex:(NSInteger)theIndex{
    return [self.masterBirdSightingList objectAtIndex:theIndex];
}

- (void)addBirdSightingWithName:(NSString *)inputBirdName location:(NSString *)inputLocation {
    BirdSighting *sighting;
    NSDate *today = [NSDate date];
    
    sighting = [[BirdSighting alloc] initWithName:inputBirdName location:inputLocation date:today];
    [self.masterBirdSightingList addObject:sighting];
}

@end

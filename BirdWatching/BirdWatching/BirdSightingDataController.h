//
//  BirdSightingDataController.h
//  BirdWatching
//
//  Created by 佐藤 友信 on 2013/07/11.
//  Copyright (c) 2013年 Tomonobu Sato. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BirdSighting;

@interface BirdSightingDataController : NSObject

@property (nonatomic, copy)NSMutableArray *masterBirdSightingList;

- (NSUInteger)countOfList;
- (BirdSighting *)objectInListAtIndex:(NSInteger)theIndex;
- (void)addBirdSightingWithName:(NSString *)inputBirdName location:(NSString *)inputLocation;

@end

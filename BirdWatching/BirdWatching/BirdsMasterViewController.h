//
//  BirdsMasterViewController.h
//  BirdWatching
//
//  Created by 佐藤 友信 on 2013/07/11.
//  Copyright (c) 2013年 Tomonobu Sato. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BirdSightingDataController;

@interface BirdsMasterViewController : UITableViewController

@property (strong, nonatomic) BirdSightingDataController *dataController;

@end

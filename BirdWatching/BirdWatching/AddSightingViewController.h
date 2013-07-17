//
//  AddSightingViewController.h
//  BirdWatching
//
//  Created by 佐藤 友信 on 2013/07/16.
//  Copyright (c) 2013年 Tomonobu Sato. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol AddSightingViewControllerDelegate;

@interface AddSightingViewController : UITableViewController <UITextFieldDelegate>

@property (weak, nonatomic) id <AddSightingViewControllerDelegate> delegate;

@property (weak, nonatomic) IBOutlet UITextField *birdNameInput;
@property (weak, nonatomic) IBOutlet UITextField *locationInput;

- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;

@end

@protocol AddSightingViewControllerDelegate <NSObject>

- (void)addSightingViewControllerDidCancel:(AddSightingViewController *)controller;
- (void)addSightingViewControllerDidFinish:(AddSightingViewController *)controller name:(NSString *)name location:(NSString *)location;

@end

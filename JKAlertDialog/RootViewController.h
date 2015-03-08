//
//  RootViewController.h
//  JKAlertDialog
//
//  Created by Jakey on 15/3/8.
//  Copyright (c) 2015年 www.skyfox.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *_table;
}
- (IBAction)Touched:(id)sender;
- (IBAction)showSystemTouched:(id)sender;
- (IBAction)normalTouched:(id)sender;

- (IBAction)Touched2:(id)sender;

@end

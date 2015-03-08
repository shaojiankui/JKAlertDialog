//
//  RootViewController.m
//  JKAlertDialog
//
//  Created by Jakey on 15/3/8.
//  Copyright (c) 2015年 www.skyfox.org. All rights reserved.
//

#import "RootViewController.h"
#import "JKAlertDialog.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _table=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 270, 1000) style:UITableViewStylePlain];
    _table.delegate = self;
    _table.dataSource = self;

}
- (IBAction)normalTouched:(id)sender {
    JKAlertDialog *alert = [[JKAlertDialog alloc]initWithTitle:@"这是一个AlertDialog" message:@"这是一个AlertDialog这是一个AlertDialog这是一个AlertDialog这是一个AlertDialog这是一个AlertDialog"];
    
    [alert addButtonWithTitle:@"确定"];
    
    [alert addButton:Button_OTHER withTitle:@"取消" handler:^(JKAlertDialogItem *item) {
        NSLog(@"click %@",item.title);
    }];;
    [alert addButton:Button_OTHER withTitle:@"ok" handler:^(JKAlertDialogItem *item) {
        NSLog(@"click %@",item.title);
        
    }];
    [alert addButton:Button_OTHER withTitle:@"cancle" handler:^(JKAlertDialogItem *item) {
        NSLog(@"click %@",item.title);
        
    }];
    
    [alert show];
    
}

- (IBAction)Touched:(id)sender {
    JKAlertDialog *alert = [[JKAlertDialog alloc]initWithTitle:@"提示" message:@""];
    alert.contentView =  _table;

    [alert addButtonWithTitle:@"确定"];
    
    [alert addButton:Button_OTHER withTitle:@"取消" handler:^(JKAlertDialogItem *item) {
        NSLog(@"click %@",item.title);
    }];;
    [alert addButton:Button_OTHER withTitle:@"ok" handler:^(JKAlertDialogItem *item) {
        NSLog(@"click %@",item.title);

    }];
    [alert addButton:Button_OTHER withTitle:@"cancle" handler:^(JKAlertDialogItem *item) {
        NSLog(@"click %@",item.title);

    }];

    [alert show];
}

- (IBAction)Touched2:(id)sender {
    JKAlertDialog *alert = [[JKAlertDialog alloc]initWithTitle:@"提示" message:@""];
    alert.buttonWidth = 100;
    alert.contentView =  _table;
    
    [alert addButtonWithTitle:@"确定"];
    
    [alert addButton:Button_OTHER withTitle:@"取消" handler:^(JKAlertDialogItem *item) {
        NSLog(@"click %@",item.title);
    }];;
    [alert addButton:Button_OTHER withTitle:@"ok" handler:^(JKAlertDialogItem *item) {
        NSLog(@"click %@",item.title);
        
    }];
    [alert addButton:Button_OTHER withTitle:@"cancle" handler:^(JKAlertDialogItem *item) {
        NSLog(@"click %@",item.title);
        
    }];
    
    [alert show];
}

- (IBAction)showSystemTouched:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"这是一个Alert这是一个A" message:@"这是一个Alert这是一个Alert这是一个Alert这是一个Alerterlert这是一个Alert" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:@"取消", nil];
    [alert show];
}




#pragma --mark table
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    //config the cell
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
}


@end

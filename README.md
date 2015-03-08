# JKAlertDialog
AlertDialog,类似Android中的AlertDialog,可以指定任意的View显示在Alert弹出框中,样式和ios UIAlertView样式一致

##使用方法
    JKAlertDialog *alert = [[JKAlertDialog alloc]initWithTitle:@"提示" message:@"你有新的消息"];
    //alert.buttonWidth = 100;
    //alert.contentView =  _table;

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

![](https://raw.githubusercontent.com/shaojiankui/JKAlertDialog/master/demo.gif)
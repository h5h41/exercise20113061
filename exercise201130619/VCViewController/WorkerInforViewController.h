//
//  WorkerInforViewController.h
//  exercise201130619
//
//  Created by 张翼德 on 13-6-20.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WorkerInforViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *tabview;
}
@property(retain,nonatomic) UIView *tview;
@end

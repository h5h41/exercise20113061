//
//  tableView.h
//  exercise201130619
//
//  Created by 张 伟 on 13-6-20.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewPage.h"

@interface tableView : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *tableView0;
    NewPage *page;
    NSMutableArray *array;
}
@property(nonatomic,retain)UIView *viewer;
@property(nonatomic,retain) NSMutableArray *tablearray;
@end

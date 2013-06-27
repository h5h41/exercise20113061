//
//  WorkerViewController.h
//  exercise201130619
//
//  Created by 张 伟 on 13-6-19.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WorkerViewController : UIViewController<UIScrollViewDelegate>
{

    UILabel *label0;
    NSInteger number;
}
@property(retain,nonatomic) UIView *viewTables;

-(id)initWithNumber:(NSInteger)a_number;
-(void)addView;
@end

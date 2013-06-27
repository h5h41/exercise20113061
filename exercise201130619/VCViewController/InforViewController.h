//
//  InforViewController.h
//  exercise201130619
//
//  Created by 张翼德 on 13-6-20.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InforViewController : UITableViewCell
{
    UIImageView *img;
    UILabel *name;
    UILabel *Tel;
    
}
@property(nonatomic,retain)UIImageView *imgView;
@property(nonatomic,retain)UILabel *nameLable;
@property(nonatomic,retain)UILabel *TelLable;

@end

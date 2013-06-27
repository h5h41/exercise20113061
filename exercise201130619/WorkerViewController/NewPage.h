//
//  NewPage.h
//  exercise201130619
//
//  Created by 张 伟 on 13-6-20.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewPage : UIViewController
{
    NSInteger stImg;
    NSMutableArray *array;
}
@property(nonatomic,retain)NSString *stName;
@property(nonatomic,retain)NSString *stPhone;
-(id)initWithName:(NSString *)a_name phone:(NSString *)a_phone image:(NSInteger)a_img;
@end

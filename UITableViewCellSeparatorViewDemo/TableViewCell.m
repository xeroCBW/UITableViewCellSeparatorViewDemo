//
//  TableViewCell.m
//  UITableViewCellSeparatorViewDemo
//
//  Created by 陈博文 on 17/3/14.
//  Copyright © 2017年 陈博文. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    //cell 中间的分割线去除--如果不行,可以试着将 left 的值加大
    self.separatorInset = UIEdgeInsetsMake(0, self.bounds.size.width, 0, 0);
    
    
}


- (void)addSubview:(UIView *)view
{
    //如果是_UITableViewCellSeparatorView就不让添加
    if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
    {
        [super addSubview:view];
    }
    
}
@end

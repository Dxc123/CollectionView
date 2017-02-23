//
//  MyCollectionViewCell.m
//  CollectionView
//
//  Created by 代星创 on 2017/2/21.
//  Copyright © 2017年 Dxc. All rights reserved.
//

#import "MyCollectionViewCell.h"

@implementation MyCollectionViewCell
-(instancetype)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if (self) {
        self.bgImageView=[[UIImageView alloc] init];
        self.bgImageView.backgroundColor=[UIColor redColor];
        [self.contentView addSubview:self.bgImageView];
        self.titleLab=[UILabel new];
        [self.contentView addSubview:self.titleLab];
    }
    return self;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    self.bgImageView.frame=CGRectMake(0, 0, 100, 100);
    self.titleLab.frame=CGRectMake(0, 70, 100, 30);
    self.titleLab.alpha=0.5;
    self.titleLab.backgroundColor=[UIColor grayColor];
    self.titleLab.textAlignment=NSTextAlignmentCenter;
}
@end

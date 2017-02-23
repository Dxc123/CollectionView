//
//  ViewController.m
//  CollectionView
//
//  Created by 代星创 on 2017/2/21.
//  Copyright © 2017年 Dxc. All rights reserved.
//

#import "ViewController.h"
#import "MyCollectionViewCell.h"
@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建布局类
    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc] init];
    //设置每一个小方块的大小
    //最好是通过代理方法来设置
//     layout.itemSize=CGSizeMake(100, 100);
    //设置最小间距
    layout.minimumLineSpacing=10;
    //设置最小列间距
    layout.minimumInteritemSpacing=10;
    //设置上下左右四边间距
    layout.sectionInset=UIEdgeInsetsMake(10, 10, 10, 10);
    //设置滚动的方向
    layout.scrollDirection=UICollectionViewScrollDirectionVertical;
    
    
    UICollectionView *collectionView=[[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-64) collectionViewLayout:layout];
    collectionView.backgroundColor=[UIColor yellowColor];
    collectionView.delegate=self;
    collectionView.dataSource=self;
    //注册cell
    [collectionView registerClass:[MyCollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    [self.view addSubview:collectionView];
}

//UICollectionView代理方法

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 7;
    
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    MyCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.bgImageView.image=[UIImage imageNamed:@"MYXJ_20160203210654_fast.jpg"];
    cell.titleLab.text=@"桑心悦目";
    return cell;
    
}
//控制每个小方块的大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return  CGSizeMake(100, 100);
}
//控制分区的代理方法
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 3;
}
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section{
    return CGSizeMake(375, 40);
}
//自定义分区

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

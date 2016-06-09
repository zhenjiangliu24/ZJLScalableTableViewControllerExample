//
//  ZJLScalableTableViewController.m
//  ZJLScalableTableViewControllerExample
//
//  Created by ZhongZhongzhong on 16/6/9.
//  Copyright © 2016年 ZhongZhongzhong. All rights reserved.
//

#import "ZJLScalableTableViewController.h"

#define ScreenWidth [UIScreen mainScreen].bounds.size.width

@interface ZJLScalableTableViewController ()
@property (nonatomic, strong) UIImageView *ZJL_HeaderImageView;
@property (assign) CGFloat ZJL_height;
@end

@implementation ZJLScalableTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
}

- (void)setHeaderWithImage:(UIImage *)image height:(CGFloat)height
{
    self.ZJL_height = height;
    self.ZJL_HeaderImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, self.ZJL_height)];
    self.ZJL_HeaderImageView.image = image;
    [self.tableView addSubview:self.ZJL_HeaderImageView];
    self.tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, self.ZJL_height)];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat offsetY = scrollView.contentOffset.y;
    if (offsetY<0) {
        self.ZJL_HeaderImageView.frame = CGRectMake(offsetY/2, offsetY, ScreenWidth-offsetY, self.ZJL_height-offsetY);
    }
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}




@end

//
//  ViewController.m
//  DrawLine_Demo
//
//  Created by dllo on 15/11/23.
//  Copyright © 2015年 GYQ. All rights reserved.
//

#import "ViewController.h"
#import "DrawLine.h"
#import "TemCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *showTableView;
@property (nonatomic, retain) NSMutableArray *valueArr;
@property (nonatomic, retain) UIImageView *imageViewN;

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated {
    _valueArr = [NSMutableArray arrayWithCapacity:0];
    for (NSInteger i = 0; i < 5; i++) {
        CGFloat a = arc4random() % 12;
        NSNumber *num = [NSNumber numberWithFloat:a];
        [_valueArr addObject:num];
    }

}
/* 画直线 */
- (void)drawStraightLine {
    [DrawLine drawLineCenter:self.view withBeginX:0 withBeginY:155 withEndX:130 withEndY:155 withLineWidth:1 withColorR:255 G:255 B:255 Alpha:1];
    [DrawLine drawLineCenter:self.view withBeginX:250 withBeginY:155 withEndX:375 withEndY:155 withLineWidth:1 withColorR:255 G:255 B:255 Alpha:1];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(125, 145, 125, 20)];
    [self.view addSubview:label];
    label.text = @"直线";
    label.textColor = [UIColor whiteColor];
    label.textAlignment = 1;
    label.font = [UIFont systemFontOfSize:20];
    UILabel *label1 =[[UILabel alloc] initWithFrame:CGRectMake(125, 255, 125, 20)];
    [self.view addSubview:label1];
    label1.text = @"折线";
    label1.textColor = [UIColor whiteColor];
    label1.textAlignment = 1;
    label1.font = [UIFont systemFontOfSize:20];
}
/* 创建tableView */
- (void)createTableView {
    self.showTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 200, 375, 375) style:(UITableViewStylePlain)];
    _showTableView.backgroundColor = [UIColor clearColor];
    _showTableView.delegate = self;
    _showTableView.dataSource = self;
    [_showTableView registerClass:[TemCell class] forCellReuseIdentifier:@"reuse"];
    _showTableView.transform = CGAffineTransformMakeRotation(M_PI / 2 * 3);
    [self.view addSubview:_showTableView];
     self.imageViewN = [[UIImageView alloc] init];
     self.imageViewN.frame = CGRectMake(0, 200, 375, 375);
    [self.view addSubview:_imageViewN];
    self.view.backgroundColor = [UIColor clearColor];
    self.showTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
     self.view.backgroundColor = [UIColor whiteColor];
    [self drawStraightLine]; /* 画直线 */
    [self createTableView];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TemCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuse"];
    /** 改变cell的方向 */
    cell.transform = CGAffineTransformMakeRotation(M_PI / 2);
  
    cell.tempStr = [[_valueArr objectAtIndex:indexPath.row] floatValue];
    if (indexPath.row < 4) {
        CGFloat high1 = [[self.valueArr objectAtIndex:indexPath.row] floatValue];
        CGFloat high2 = [[self.valueArr objectAtIndex:indexPath.row + 1] floatValue];
        /* 画折线 */
        [DrawLine drawCenter:self.imageViewN withBeginX:(37 + indexPath.row * 75) withBeginY:90 - high1 * 2.25 + 85 withEndX:(34 + indexPath.row * 75 + 75) withEndY:90 - high2 * 2.25 + 85 withLineWidth:1.5 withColorR:0.973 G:0.251 B:0.227 Alpha:1];
    }
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return  375 / 5;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

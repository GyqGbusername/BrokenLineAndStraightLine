//
//  Wdy_TemCell.h
//  你若安好么么哒
//
//  Created by dllo on 15/9/23.
//  Copyright (c) 2015年 WDY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TemCell : UITableViewCell

@property (nonatomic, retain) UILabel *weakLabel;
@property (nonatomic, retain) UILabel *highLabel;
@property (nonatomic, assign) CGFloat tempStr;

@end

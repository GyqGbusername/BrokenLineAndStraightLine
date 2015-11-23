//
//  Wdy_TemCell.m
//  你若安好么么哒
//
//  Created by dllo on 15/9/23.
//  Copyright (c) 2015年 WDY. All rights reserved.
//

#import "TemCell.h"



@interface TemCell ()


@property (nonatomic, retain) UIView *dotView1;
@property (nonatomic, assign) CGFloat high;

@end

@implementation TemCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        /** 设置透明 */
        self.backgroundColor = [UIColor clearColor];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.weakLabel = [[UILabel alloc] init];
        [self.contentView addSubview:self.weakLabel];

        self.highLabel = [[UILabel alloc] init];
        [self.contentView addSubview:self.highLabel];
        self.dotView1 = [[UIView alloc] init];
        [self.contentView addSubview:self.dotView1];
        self.dotView1.layer.cornerRadius = 3;
    }
    return self;
    
}
- (void)setTempStr:(CGFloat)tempStr {
    if (_tempStr != tempStr) {
        _tempStr = tempStr;
    }
    _high = _tempStr;
    _highLabel.text = [NSString stringWithFormat:@"%.1f", _tempStr];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    _weakLabel.frame = CGRectMake(125, 50, 125, 20);
    _weakLabel.textColor = [UIColor whiteColor];
    /** 画出圆点 */
    self.dotView1.frame = CGRectMake(34, 90 - _high * 2.25 + 83, 6, 6);
    
    /** 天气标记 */
    self.highLabel.frame = CGRectMake(20, 90 - _high * 2.25 + 85 - 20, 20, 17);
    self.highLabel.textAlignment = 1;
    
    _highLabel.font = [UIFont systemFontOfSize:10];
    _highLabel.textColor = [UIColor whiteColor];

}





- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

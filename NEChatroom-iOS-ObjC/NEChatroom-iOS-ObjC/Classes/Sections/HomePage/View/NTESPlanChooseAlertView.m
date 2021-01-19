//
//  NTESPlanChooseAlertView.m
//  NEChatroom-iOS-ObjC
//
//  Created by vvj on 2021/1/19.
//  Copyright © 2021 netease. All rights reserved.
//

#import "NTESPlanChooseAlertView.h"
#import <Masonry.h>
#import "UIView+NTES.h"


@interface NTESPlanChooseAlertView ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong) UIView *planContainerView;
@property(nonatomic, strong) UILabel *titleLable;
@property(nonatomic, strong) UITableView *tableView;
@property(nonatomic, strong) UIButton *cancelButton;
@property(nonatomic, strong) NSArray *imageArray;
@property(nonatomic, strong) NSArray *titleArray;

@end

@implementation NTESPlanChooseAlertView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self addSubviews];
    }
    return self;
}

- (void)addSubviews {
    
    self.backgroundColor = UIColorFromRGBA(0x000000, 1.0);
      [UIView animateWithDuration:0.35 animations:^{
          [self addSubview:self.planContainerView];
          [self.planContainerView addSubview:self.tableView];
          [self.planContainerView addSubview:self.cancelButton];

      }];

      [self.planContainerView mas_makeConstraints:^(MASConstraintMaker *make) {
          make.left.right.bottom.equalTo(self);
          make.height.mas_equalTo(234);
      }];
      
      [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
          make.top.left.right.equalTo(self.planContainerView);
          make.height.mas_equalTo(152);
      }];
      
      [self.cancelButton mas_makeConstraints:^(MASConstraintMaker *make) {
          make.centerX.equalTo(self.planContainerView);
          make.top.equalTo(self.tableView.mas_bottom).offset(12);
      }];
}


/** 删除视图 */
- (void)dismissFromSuperView {
    
    [UIView animateWithDuration:0.5 animations:^{
        self.alpha = 0;
        self.cancelButton.top += UIScreenHeight;
        self.cancelButton.top += UIScreenHeight;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

#pragma mark - UITableViewDelegate UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *const reuseIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return self.titleLable;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 48;
}

-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UIView *footerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, UIScreenWidth, 8)];
    footerView.backgroundColor = UIColorFromRGB(0xF0F0F2);
    return footerView;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 8;
}


#pragma mark - lazyMethod

- (UIView *)planContainerView {
    if (!_planContainerView) {
        _planContainerView = [[UIView alloc] init];
        _planContainerView.backgroundColor = UIColor.whiteColor;
    }
    return _planContainerView;
}

- (UILabel *)titleLable {
    if (!_titleLable) {
        _titleLable = [[UILabel alloc]init];
        _titleLable.text = @"方案选择";
        _titleLable.font = [UIFont fontWithName:@"PingFangSC-Medium" size:16];
    }
    return _titleLable;
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.backgroundColor = UIColor.blackColor;
    }
    return _tableView;
}


- (UIButton *)cancelButton {
    if (!_cancelButton) {
        _cancelButton = [[UIButton alloc]init];
        _cancelButton.titleLabel.font = [UIFont systemFontOfSize:16];
        [_cancelButton setTitleColor:UIColorFromRGB(0x222222) forState:UIControlStateNormal];
        [_cancelButton setTitle:@"取消" forState:UIControlStateNormal];
        [_cancelButton addTarget:self action:@selector(dismissFromSuperView) forControlEvents:UIControlEventTouchUpInside];
    }
    return _cancelButton;
}

- (NSArray *)imageArray {
    if (!_imageArray) {
        _imageArray = @[@"",@""];
    }
    return _imageArray;
}

- (NSArray *)titleArray {
    if (!_titleArray) {
        _titleArray = @[@"RTC",@"CDN"];
    }
    return _titleArray;
}
@end

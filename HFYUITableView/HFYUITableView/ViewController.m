//
//  ViewController.m
//  HFYUITableView
//
//  Created by apple on 2017/9/4.
//  Copyright © 2017年 taosame. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *_tableView;
    NSArray *_jsonArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
        _tableView.backgroundColor = [UIColor whiteColor];
        _tableView.rowHeight = 64.0f;
        [self.view addSubview:_tableView];
    }
    [self getJsonData];
}

- (void)getJsonData
{
    _jsonArray = @[@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！",@"你好！",@"哈哈哈",@"Let is go!",@"干什么？",@"来来来。",@"嘿嘿！"];
    [_tableView reloadData];
}

#pragma mark -- UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_jsonArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static  NSString *CellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil){
        cell = [[UITableViewCell alloc]  initWithStyle:UITableViewCellStyleDefault
                                     reuseIdentifier:CellIdentifier];
    }else{
        for (UIView *subView in cell.contentView.subviews) {
            [subView removeFromSuperview];
        }
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    cell.textLabel.text = [_jsonArray objectAtIndex:indexPath.row];
    cell.textLabel.textColor = [UIColor greenColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

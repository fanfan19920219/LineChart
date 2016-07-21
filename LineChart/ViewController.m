//
//  ViewController.m
//  LineChart
//
//  Created by M-SJ077 on 16/7/21.
//  Copyright © 2016年 zhangzhihua. All rights reserved.
//

#import "ViewController.h"
#import "LineView.h"
#import "LineDataModel.h"
#define MAXVALUE  @"0"
#define MINVALUE @"999"
@interface ViewController ()

@property (nonatomic , strong)LineView *lineView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self create_View];
}

-(void)create_View{
    _lineView = [[LineView alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height/2  + 40)];
    [self.view addSubview:_lineView];
    
    NSMutableArray *modelArray = [[NSMutableArray alloc]init];
    
    for(int i = 0 ; i<5 ; i++){
        LineDataModel *model = [[LineDataModel alloc]init];
        model.xValue = [NSString stringWithFormat:@"%u",arc4random()%20];
        model.yValue = [NSString stringWithFormat:@"%u",arc4random()%20];
        [modelArray addObject:model];
    }
    [_lineView setPointValue:modelArray andMaxValue:@"20" andMinValue:@"0" andTitleString:@"IF指数"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

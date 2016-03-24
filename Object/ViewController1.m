//
//  ViewController1.m
//  Object
//
//  Created by Lugick Wang on 3/22/16.
//  Copyright © 2016 Lugick Wang. All rights reserved.
//

#import "ViewController1.h"
#import "SearchBar.h"

@interface ViewController1 ()<SearchBarProtocol>
@property (nonatomic, strong) SearchBar *bar;

@end

@implementation ViewController1

#pragma mark - life circle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.bar];

    // Do any additional setup after loading the view.
}

#pragma mark - actions
- (IBAction)searchAction:(id)sender {
    NSArray * arr = [_bar.logic dataForSearch];
    NSLog(@"VC搜索结果%@",arr[0]);
}

#pragma mark - SearchBarProtocol
-(void)didTapSearchBarButton:(SearchBar *)searchBar {
    NSArray * arr = [_bar.logic dataForSearch];
    NSLog(@"代理搜索结果%@",arr[0]);
}

#pragma mark -getters
- (SearchBar *)bar {
    
    if (_bar == nil) {
        SearchLogic * logic = [[SearchLogic alloc] initWithSearchBarStyle:SearchBarStylePage];

        _bar = [[SearchBar alloc] initWithFrame:CGRectMake(0, 40, 180, 80) searchBarStyle:SearchBarStylePage searchLogic:logic];
        _bar.delegate = self;
    }
    return _bar;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

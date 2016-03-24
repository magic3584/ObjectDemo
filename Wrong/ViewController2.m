//
//  ViewController2.m
//  Object
//
//  Created by Lugick Wang on 3/23/16.
//  Copyright © 2016 Lugick Wang. All rights reserved.
//

#import "ViewController2.h"
#import "LocalSearchBar.h"

@interface ViewController2 ()<HomeSearchBarProtocol>

@property (nonatomic, strong) LocalSearchBar *searchBar;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.searchBar];
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)search:(id)sender {
    NSArray * arr = [_searchBar dataForSearch];
    NSLog(@"VC结果%@",arr[0]);
}

#pragma mark - HomeSearchBarProtocol
-(void)didTapHomeSearchBar:(HomeSearchBar *)homeSearchBar {
    NSArray * arr = [_searchBar dataForSearch];
    NSLog(@"代理结果%@",arr[0]);
}

-(LocalSearchBar *)searchBar {
    if (!_searchBar) {
        _searchBar = [[LocalSearchBar alloc] initWithFrame:CGRectMake(0, 100, 320, 80)];
        _searchBar.delegate = self;
    }
    return _searchBar;
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

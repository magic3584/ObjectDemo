//
//  ViewController.m
//  Wrong
//
//  Created by Lugick Wang on 3/23/16.
//  Copyright © 2016 Lugick Wang. All rights reserved.
//

#import "ViewController.h"
#import "HomeSearchBar.h"

@interface ViewController ()<HomeSearchBarProtocol>

@property (nonatomic, strong) HomeSearchBar *searchBar;

@end

@implementation ViewController

#pragma mark - life circle
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

#pragma mark - getters
-(HomeSearchBar *)searchBar {
    if (!_searchBar) {
        _searchBar = [[HomeSearchBar alloc] initWithFrame:CGRectMake(0, 100, 320, 80)];
        _searchBar.delegate = self;
    }
    return _searchBar;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  Object
//
//  Created by Lugick Wang on 3/22/16.
//  Copyright © 2016 Lugick Wang. All rights reserved.
//

#import "ViewController.h"
#import "SearchBar.h"

@interface ViewController ()

@property (nonatomic, strong) SearchBar *bar;

@end

@implementation ViewController

#pragma mark - life circle
- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view addSubview:self.bar];
    
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - actions
- (IBAction)searchAction:(id)sender {
    NSArray * arr = [_bar.logic dataForSearch];
    NSLog(@"%@",arr[0]);
}

#pragma mark - getters
- (SearchBar *)bar {
    
    if (_bar == nil) {
        
        SearchLogic * logic = [[SearchLogic alloc] initWithSearchBarStyle:SearchBarStyleHome];
        
        _bar = [[SearchBar alloc] initWithFrame:CGRectMake(0, 60, 100, 50) searchBarStyle:SearchBarStyleHome searchLogic:logic];
        
    }
    return _bar;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

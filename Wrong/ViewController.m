//
//  ViewController.m
//  Wrong
//
//  Created by Lugick Wang on 3/23/16.
//  Copyright © 2016 Lugick Wang. All rights reserved.
//

#import "ViewController.h"
#import "HomeSearchBar.h"

@interface ViewController ()

@property (nonatomic, strong) HomeSearchBar *searchBar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.searchBar];
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(HomeSearchBar *)searchBar {
    if (!_searchBar) {
        _searchBar = [[HomeSearchBar alloc] initWithFrame:CGRectMake(0, 100, 320, 50)];
    }
    return _searchBar;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

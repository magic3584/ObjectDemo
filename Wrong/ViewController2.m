//
//  ViewController2.m
//  Object
//
//  Created by Lugick Wang on 3/23/16.
//  Copyright © 2016 Lugick Wang. All rights reserved.
//

#import "ViewController2.h"
#import "LocalSearchBar.h"

@interface ViewController2 ()
@property (nonatomic, strong) LocalSearchBar *searchBar;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.searchBar];
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(LocalSearchBar *)searchBar {
    if (!_searchBar) {
        _searchBar = [[LocalSearchBar alloc] initWithFrame:CGRectMake(0, 100, 320, 50)];
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

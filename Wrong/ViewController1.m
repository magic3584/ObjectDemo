//
//  ViewController1.m
//  Object
//
//  Created by Lugick Wang on 3/23/16.
//  Copyright © 2016 Lugick Wang. All rights reserved.
//

#import "ViewController1.h"
#import "PageSearchBar.h"

@interface ViewController1 ()

@property (nonatomic, strong) PageSearchBar *searchBar;

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.searchBar];
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(PageSearchBar *)searchBar {
    if (!_searchBar) {
        _searchBar = [[PageSearchBar alloc] initWithFrame:CGRectMake(0, 100, 320, 50)];
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

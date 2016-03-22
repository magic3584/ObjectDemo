//
//  ViewController2.m
//  Object
//
//  Created by Lugick Wang on 3/22/16.
//  Copyright © 2016 Lugick Wang. All rights reserved.
//

#import "ViewController2.h"
#import "SearchBar.h"

@interface ViewController2 ()<SearchProtocol>

@property (nonatomic, strong) SearchBar *bar;

@end

@implementation ViewController2

#pragma mark - life circle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.bar];

    // Do any additional setup after loading the view.
}

#pragma mark - actions
- (IBAction)searchAction:(id)sender {
    [self search];
}

#pragma mark - SearchProtocol
-(void)search {
    NSLog(@"22");
}

#pragma mark - getters
- (SearchBar *)bar {
    
    if (_bar == nil) {
        _bar = [[SearchBar alloc] initWithPlaceholder:@"22"];
        
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

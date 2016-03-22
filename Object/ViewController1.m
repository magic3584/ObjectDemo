//
//  ViewController1.m
//  Object
//
//  Created by Lugick Wang on 3/22/16.
//  Copyright © 2016 Lugick Wang. All rights reserved.
//

#import "ViewController1.h"
#import "SearchBar.h"

@interface ViewController1 ()<SearchProtocol>
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
    [self search];
}

#pragma mark - SearchProtocol
-(void)search {
    NSLog(@"11");
}

#pragma mark -getters
- (SearchBar *)bar {
    
    if (_bar == nil) {
        _bar = [[SearchBar alloc] initWithPlaceholder:@"11"];
        
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

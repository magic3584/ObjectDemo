//
//  ViewController.m
//  Object
//
//  Created by Lugick Wang on 3/22/16.
//  Copyright © 2016 Lugick Wang. All rights reserved.
//

#import "ViewController.h"
#import "SearchBar.h"

@interface ViewController ()<SearchProtocol>

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
    [self search];
}

#pragma mark - SearchProtocol
-(void)search {
    NSLog(@"VC");
}

#pragma mark - getters
- (SearchBar *)bar {
    
    if (_bar == nil) {
        _bar = [[SearchBar alloc] initWithPlaceholder:@"VC"];
        
    }
    return _bar;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

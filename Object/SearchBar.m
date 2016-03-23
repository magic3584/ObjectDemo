//
//  SearchBar.m
//  Object
//
//  Created by Lugick Wang on 3/22/16.
//  Copyright © 2016 Lugick Wang. All rights reserved.
//

#import "SearchBar.h"

@implementation SearchBar

-(instancetype)initWithFrame:(CGRect)frame searchBarStyle:(SearchBarStyle)style {
    
    if (self = [super initWithFrame:frame]) {
        
        self.userInteractionEnabled = YES;
        
        _textField = [[UITextField alloc] initWithFrame:frame];
        
        CGRect textFieldFrame = _textField.frame;
        textFieldFrame.origin.x = 0;
        textFieldFrame.origin.y = 0;
        textFieldFrame.size.width = frame.size.width - frame.size.height;
        textFieldFrame.size.height = frame.size.height;
        _textField.frame = textFieldFrame;
        
//        UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(frame.size.width, 0, frame.size.height, frame.size.height)];
//        [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
//        [btn setTitle:@"搜索" forState:UIControlStateNormal];
//        [btn addTarget:self action:@selector(searchAction) forControlEvents:UIControlEventTouchUpInside];
//        
        [self addSubview:_textField];
//        [self addSubview:btn];
        
    }
    return self;
}
//新增
-(instancetype)initWithFrame:(CGRect)frame searchBarStyle:(SearchBarStyle)style searchLogic:(SearchLogic *)logic {
    if (self = [self initWithFrame:frame searchBarStyle:style]) {
        _textField.placeholder = [NSString stringWithFormat:@"%ld",style];
        _logic = logic;
    }
    return self;
}
//- (void)searchAction {
//
//}
@end

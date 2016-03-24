//
//  SearchBar.m
//  Object
//
//  Created by Lugick Wang on 3/22/16.
//  Copyright © 2016 Lugick Wang. All rights reserved.
//

#import "SearchBar.h"

@implementation SearchBar

-(instancetype)initWithFrame:(CGRect)frame searchLogic:(SearchLogic *)logic {
    if (self = [self initWithFrame:frame]) {
        self.userInteractionEnabled = YES;
        
        _textField = [[UITextField alloc] initWithFrame:frame];
        
        CGRect textFieldFrame = _textField.frame;
        textFieldFrame.origin.x = 0;
        textFieldFrame.origin.y = 0;
        textFieldFrame.size.width = frame.size.width - frame.size.height;
        textFieldFrame.size.height = frame.size.height;
        _textField.frame = textFieldFrame;
        _textField.placeholder = [NSString stringWithFormat:@"%ld",logic.style];
        
        UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(frame.size.width - frame.size.height, 0, frame.size.height, frame.size.height)];
        [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [btn setTitle:@"自带搜索" forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(searchAction) forControlEvents:UIControlEventTouchUpInside];
        //
        [self addSubview:_textField];
        [self addSubview:btn];
        
        _logic = logic;
    }
    return self;
}
- (void)searchAction {
    NSArray * arr = [_logic dataForSearch];
    if (_delegate && [_delegate respondsToSelector:@selector(didTapSearchBarButton:dataArray:)]) {
        [_delegate didTapSearchBarButton:self dataArray:arr];
    }
}
@end

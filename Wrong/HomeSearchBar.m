//
//  HomeSearchBar.m
//  Object
//
//  Created by Lugick Wang on 3/23/16.
//  Copyright © 2016 Lugick Wang. All rights reserved.
//

#import "HomeSearchBar.h"

@implementation HomeSearchBar

-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        self.userInteractionEnabled = YES;
        
        float buttonWidth = frame.size.height;
        
        [self addSubview:self.textField];
        CGRect textFieldFrame = _textField.frame;
        textFieldFrame.origin.x = 0;
        textFieldFrame.origin.y = 0;
        textFieldFrame.size.width = frame.size.width - buttonWidth;
        textFieldFrame.size.height = buttonWidth;
        _textField.frame = textFieldFrame;
        _textField.placeholder = @"0";

        UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(textFieldFrame.size.width, 0, buttonWidth, buttonWidth)];
        [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [btn setTitle:@"搜索" forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(search) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
        
        
    }
    return self;
}

- (void)btnAction {
    if (_delegate && [_delegate respondsToSelector:@selector(didTapHomeSearchBar:)]) {
        [_delegate didTapHomeSearchBar:self];
    }
}
- (void)search {
    NSLog(@"Home");
}

-(UITextField *)textField {
    if (!_textField) {
        _textField = [[UITextField alloc] init];
        _textField.placeholder = @"搜索";
    }
    return _textField;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

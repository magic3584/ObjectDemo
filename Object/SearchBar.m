//
//  SearchBar.m
//  Object
//
//  Created by Lugick Wang on 3/22/16.
//  Copyright © 2016 Lugick Wang. All rights reserved.
//

#import "SearchBar.h"

@implementation SearchBar
-(instancetype)initWithPlaceholder:(NSString *)placeholder {
    
    if (self = [super init]) {
        self.userInteractionEnabled = YES;
        
        CGRect frame = self.frame;
        frame.size.width = [UIScreen mainScreen].bounds.size.width;
        frame.size.height = 30;
        frame.origin.x = 0;
        frame.origin.y = 70;
        self.frame = frame;
        
        _textField = [[UITextField alloc] initWithFrame:frame];
        _textField.placeholder = placeholder;
                
        CGRect textFieldFrame = _textField.frame;
        textFieldFrame.origin.x = 0;
        textFieldFrame.origin.y = 0;
        _textField.frame = textFieldFrame;
        
        [self addSubview:_textField];
    }
    return self;
}
//新增
-(instancetype)initWithPlaceholder:(NSString *)placeholder searchLogic:(SearchLogic *)logic {
    if (self = [self initWithPlaceholder:placeholder]) {
        _logic = logic;
    }
    return self;
}
@end

//
//  PageSearchBar.m
//  Object
//
//  Created by Lugick Wang on 3/23/16.
//  Copyright © 2016 Lugick Wang. All rights reserved.
//

#import "PageSearchBar.h"

@implementation PageSearchBar
-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
       self.textField.placeholder = @"Page";
    }
    return self;
}
-(void)search {
    NSLog(@"Page");
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

//
//  SearchLogic.m
//  Object
//
//  Created by Lugick Wang on 3/22/16.
//  Copyright © 2016 Lugick Wang. All rights reserved.
//

#import "SearchLogic.h"

@implementation SearchLogic

-(instancetype)initWithSearchBarStyle:(SearchBarStyle)style {
    if (self = [super init]) {
        _style = style;
    }
    return self;
}

-(NSArray *)dataForSearch {
    switch (_style) {
        case SearchBarStyleHome: {
            return @[ @"Home" ];
            break;
        }
        case SearchBarStylePage: {
            return @[ @"Page" ];
            break;
        }
        case SearchBarStyleLocal: {
            return @[ @"Local" ];
            break;
        }
    }
    
    return nil;
}
@end

//
//  SearchLogic.h
//  Object
//
//  Created by Lugick Wang on 3/22/16.
//  Copyright © 2016 Lugick Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"

typedef NS_ENUM(NSInteger, SearchBarStyle){
    SearchBarStyleHome = 0,
    SearchBarStylePage,
    SearchBarStyleLocal
};

@protocol SearchProtocol <NSObject>

- (NSArray *)dataForSearch;

@end

@interface SearchLogic : NSObject<SearchProtocol>

@property (nonatomic, assign) SearchBarStyle style;

-(instancetype)initWithSearchBarStyle:(SearchBarStyle)style;

@end

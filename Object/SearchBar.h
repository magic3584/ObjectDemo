//
//  SearchBar.h
//  Object
//
//  Created by Lugick Wang on 3/22/16.
//  Copyright © 2016 Lugick Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SearchLogic.h"

@class SearchBar;
@protocol SearchBarProtocol <NSObject>

- (void)didTapSearchBarButton:(SearchBar *)searchBar dataArray:(NSArray *)dataArray;

@end

@interface SearchBar : UIView

@property (nonatomic, strong) UITextField *textField;

//新增
@property (nonatomic, strong) SearchLogic *logic;

@property (nonatomic, weak) id<SearchBarProtocol> delegate;

//新增
-(instancetype)initWithFrame:(CGRect)frame searchLogic:(SearchLogic *)logic;

@end

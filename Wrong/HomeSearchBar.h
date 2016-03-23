//
//  HomeSearchBar.h
//  Object
//
//  Created by Lugick Wang on 3/23/16.
//  Copyright © 2016 Lugick Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HomeSearchBar;

typedef NS_ENUM(NSInteger, SearchBarStyle) {
    SearchBarStyleHome = 0,
    SearchBarStylePage,
    SearchBarStyleLocal
};

@protocol HomeSearchBarProtocol <NSObject>

- (void)didTapHomeSearchBar:(HomeSearchBar *)homeSearchBar;

@end

@interface HomeSearchBar : UIView

@property (nonatomic, strong) UITextField *textField;

@property (nonatomic, assign) SearchBarStyle style;

@property (nonatomic, weak) id<HomeSearchBarProtocol> delegate;

-(instancetype)initWithFrame:(CGRect)frame;
- (void)search;
@end

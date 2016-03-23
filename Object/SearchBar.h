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



@interface SearchBar : UIView

@property (nonatomic, strong) UITextField *textField;

//新增
@property (nonatomic, strong) SearchLogic *logic;

-(instancetype)initWithFrame:(CGRect)frame searchBarStyle:(SearchBarStyle)style;

//新增
-(instancetype)initWithFrame:(CGRect)frame searchBarStyle:(SearchBarStyle)style searchLogic:(SearchLogic *)logic;

//-(instancetype)initWithPlaceholder:(NSString *)placeholder searchProtocol:(id<SearchProtocol>)delegate;

@end

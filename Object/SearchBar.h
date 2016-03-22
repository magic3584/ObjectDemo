//
//  SearchBar.h
//  Object
//
//  Created by Lugick Wang on 3/22/16.
//  Copyright © 2016 Lugick Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol SearchProtocol <NSObject>

- (void)search;

@end

@interface SearchBar : UIView

@property (nonatomic, strong) UITextField *textField;

-(instancetype)initWithPlaceholder:(NSString *)placeholder;

//-(instancetype)initWithPlaceholder:(NSString *)placeholder searchProtocol:(id<SearchProtocol>)delegate;

@end

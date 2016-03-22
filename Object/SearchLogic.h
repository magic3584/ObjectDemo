//
//  SearchLogic.h
//  Object
//
//  Created by Lugick Wang on 3/22/16.
//  Copyright © 2016 Lugick Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"

@protocol SearchProtocol <NSObject>

- (void)search;

@end

@interface SearchLogic : NSObject<SearchProtocol>

@end

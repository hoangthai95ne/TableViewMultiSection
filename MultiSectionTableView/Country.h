//
//  Country.h
//  MultiSectionTableView
//
//  Created by Hoàng Thái on 3/5/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Country : NSObject
@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) NSString *capitalCity;

- (instancetype)initWithString:(NSString*)string;

@end

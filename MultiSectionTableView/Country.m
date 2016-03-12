//
//  Country.m
//  MultiSectionTableView
//
//  Created by Hoàng Thái on 3/5/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

#import "Country.h"

@implementation Country

- (instancetype)initWithString:(NSString *)string {
    if (self = [super init]) {
        NSArray* nameAndCapitalCity = [string componentsSeparatedByString:@"|"];
        _name = nameAndCapitalCity[0];
        _capitalCity = nameAndCapitalCity[1];
    }
    return self;
}

@end

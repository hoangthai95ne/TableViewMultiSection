//
//  Continent.m
//  MultiSectionTableView
//
//  Created by Hoàng Thái on 3/5/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

#import "Continent.h"

@implementation Continent

- (instancetype)initWithName:(NSString *)name andArrayCountries:(NSArray *)arrayCountries {
    if (self = [super init]) {
        self.name = name;
        self.arrayCountries = arrayCountries;
    }
    return self;
}

@end

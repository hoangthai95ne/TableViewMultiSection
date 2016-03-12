//
//  Data.m
//  MultiSectionTableView
//
//  Created by Hoàng Thái on 3/5/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

#import "Data.h"


@implementation Data

+ (Data *)sharedData {
    static Data *data = nil;
    static dispatch_once_t dispatch_Once;
    dispatch_once(&dispatch_Once, ^{
        data = [[Data alloc] init];
    });
    return data;
}

- (instancetype)init {
    if (self = [super init]) {
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Data" ofType:@"plist"];
        NSArray *arrayDictionaryInData = [NSArray arrayWithContentsOfFile:filePath];
        NSMutableArray *tempArrayContinents = [NSMutableArray new];
        for (NSDictionary* item in arrayDictionaryInData) {
            NSString *continentName = [item objectForKey:@"continent"];
            NSMutableArray *tempCountries = [NSMutableArray new];
            NSArray *countriesInDictionary = [item objectForKey:@"countries"];
            for (NSString *country in countriesInDictionary) {
                [tempCountries addObject:[[Country alloc] initWithString:country]];
            }
            [tempArrayContinents addObject:[[Continent alloc] initWithName:continentName andArrayCountries:tempCountries]];
        }
        _arrayContinents = tempArrayContinents;
    }
    return self;
}

@end

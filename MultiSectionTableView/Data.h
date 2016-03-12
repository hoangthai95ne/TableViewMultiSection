//
//  Data.h
//  MultiSectionTableView
//
//  Created by Hoàng Thái on 3/5/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Country.h"
#import "Continent.h"

@interface Data : NSObject
@property (nonatomic, readonly) NSArray *arrayContinents;

+ (Data*)sharedData;

@end

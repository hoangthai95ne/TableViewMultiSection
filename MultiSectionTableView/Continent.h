//
//  Continent.h
//  MultiSectionTableView
//
//  Created by Hoàng Thái on 3/5/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Continent : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSArray *arrayCountries;

-(instancetype)initWithName: (NSString*)name andArrayCountries :(NSArray*)arrayCountries;

@end

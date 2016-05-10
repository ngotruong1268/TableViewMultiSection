//
//  Country.m
//  TableViewMultiSection
//
//  Created by Ngô Sỹ Trường on 5/9/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import "Country.h"

@implementation Country

-(instancetype) init:(NSString *)string {
    if (self = [super init]) {
        NSArray *country_capital = [string componentsSeparatedByString:@"|"];
        _name = country_capital[0];
        _capitalCity = country_capital[1];
    }
    return  self;
}

@end

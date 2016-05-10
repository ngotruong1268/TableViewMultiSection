//
//  Continent.m
//  TableViewMultiSection
//
//  Created by Ngô Sỹ Trường on 5/9/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import "Continent.h"

@implementation Continent

-(instancetype) initWithName:(NSString*)name andCountries:(NSArray*) countries {
    if (self = [super init]) {
        self.name = name;
        self.arrayCountries = countries;
    }
    return self;
}

@end

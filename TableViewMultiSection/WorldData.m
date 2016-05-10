//
//  WorldData.m
//  TableViewMultiSection
//
//  Created by Ngô Sỹ Trường on 5/9/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import "WorldData.h"
#import "Country.h"
#import "Continent.h"

@implementation WorldData

+(WorldData*) shareData {
    static WorldData *worldData = nil;
    static dispatch_once_t dispath_Once;
    dispatch_once(&dispath_Once, ^{
        worldData = [[WorldData alloc] init ];
    });
    return worldData;
}

-(instancetype) init {
    if (self = [super init]) {
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Data"
                                                            ofType:@"plist"];
        NSArray *array = [NSArray arrayWithContentsOfFile:filePath];
        NSMutableArray *tempArray = [[NSMutableArray alloc] initWithCapacity:[array count]];
        
        for (NSDictionary *dict in array) {
            NSArray *tempCountries = [dict objectForKey:@"countries"];
            NSMutableArray *arrayCountries = [[NSMutableArray alloc] initWithCapacity:[tempCountries count] ];
            for (NSString *string in tempCountries) {
                [arrayCountries addObject:[[Country alloc] init:string]];
            }
            [tempArray addObject:[[Continent alloc]
                                  initWithName:[dict objectForKey:@"continent"]
                                  andCountries:[NSArray arrayWithArray:arrayCountries] ]];
        }
        _arrayContinent = [NSArray arrayWithArray:tempArray];
    }
    return self;
}

@end

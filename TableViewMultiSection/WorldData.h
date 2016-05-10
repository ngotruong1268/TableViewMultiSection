//
//  WorldData.h
//  TableViewMultiSection
//
//  Created by Ngô Sỹ Trường on 5/9/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WorldData : NSObject
@property (nonatomic,readonly) NSArray *arrayContinent;

+(WorldData*) shareData;

@end

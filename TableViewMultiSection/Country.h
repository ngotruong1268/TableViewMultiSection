//
//  Country.h
//  TableViewMultiSection
//
//  Created by Ngô Sỹ Trường on 5/9/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Country : NSObject

@property (nonatomic,readonly) NSString *name;
@property (nonatomic,readonly) NSString *capitalCity;

-(instancetype) init: (NSString*) string;

@end

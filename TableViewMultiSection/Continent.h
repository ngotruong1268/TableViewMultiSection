//
//  Continent.h
//  TableViewMultiSection
//
//  Created by Ngô Sỹ Trường on 5/9/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Continent : NSObject

@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSArray *arrayCountries;

-(instancetype) initWithName:(NSString*)name andCountries:(NSArray*) countries ;

@end

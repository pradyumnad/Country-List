//
//  CountryListDataSource.m
//  Country List
//
//  Created by Pradyumna Doddala on 18/12/13.
//  Copyright (c) 2013 Pradyumna Doddala. All rights reserved.
//

#import "CountryListDataSource.h"

#define kCountriesFileName @"countries.json"

@interface CountryListDataSource () {
    NSArray *countriesList;
}

@end

@implementation CountryListDataSource

- (id)init {
    self = [super init];
    if (self) {
        [self parseJSON];
    }
    
    return self;
}

- (void)parseJSON {
    NSData *data = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"countries" ofType:@"json"]];
    NSError *localError = nil;
    NSDictionary *parsedObject = [NSJSONSerialization JSONObjectWithData:data options:0 error:&localError];
    
    if (localError != nil) {
        NSLog(@"%@", [localError userInfo]);
    }
    countriesList = (NSArray *)parsedObject;
}

- (NSArray *)countries
{
    return countriesList;
}
@end

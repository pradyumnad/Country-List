//
//  CountryListViewController.h
//  Country List
//
//  Created by Pradyumna Doddala on 18/12/13.
//  Copyright (c) 2013 Pradyumna Doddala. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CountryListViewDelegate <NSObject>
- (void)didSelectCountry:(NSDictionary *)country;
@end

@interface CountryListViewController : UIViewController

@property (nonatomic, assign) id<CountryListViewDelegate>delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil delegate:(id)delegate;
@end

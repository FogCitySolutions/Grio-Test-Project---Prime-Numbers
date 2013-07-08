//
//  GR-PrimeNumbers.h
//  Grio Test Project
//
//  Created by Fog City Solutions on 7/3/13.
//  Copyright (c) 2013 GR. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GR_PrimeNumbers : NSObject
@property (nonatomic, strong) NSMutableArray *numbersTable;
@property (nonatomic, strong) NSMutableArray *rows;
@property (nonatomic, strong) NSMutableArray *primeNumbers;
@property (nonatomic, strong) NSArray *nearDigitLocations;
-(id)initFromNumberString: (NSString *)numberString;
-(void)checkForPrimes;

@end

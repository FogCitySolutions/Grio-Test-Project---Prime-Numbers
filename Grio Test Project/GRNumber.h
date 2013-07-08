//
//  GRoneDigit.h
//  Grio Test Project
//
//  Created by Fog City Solutions on 7/3/13.
//  Copyright (c) 2013 GR. All rights reserved.
//

#import "GR-PrimeNumbers.h"

@interface GRNumber : GR_PrimeNumbers
@property (nonatomic) int digitLocationNumber; // number in array of the neighbor digit (-1,-1, -1,0, etc
@property (nonatomic) int charNumber; // Which character number is this (1 to 5).  Once it is reaches five, check the prime.  If it is prime, return it.
@property (nonatomic, strong) NSString *numberString;

-(void)checkNewNumberWithNewDigit: (int)lastDigitLocationNumber
						 lastCharNumber: (int)lastCharNumber
					   lastnumberString: (NSString *)lastNumberString;

@end

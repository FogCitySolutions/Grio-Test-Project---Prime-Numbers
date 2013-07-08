//
//  GR-PrimeNumbers.m
//  Grio Test Project
//
//  Created by Fog City Solutions on 7/3/13.
//  Copyright (c) 2013 GR. All rights reserved.
//

#import "GR-PrimeNumbers.h"
#import "GRNumber.h"

@implementation GR_PrimeNumbers

-(NSArray *)nearDigitLocations
{
	if (! _nearDigitLocations ) _nearDigitLocations = @[	@[@(-1),@(-1)],
													  @[@(0),@(-1)],
													  @[@(1),@(-1)],
													  @[@(-1),@(0)],
													  @[@(1),@(0)],
													  @[@(-1),@(1)],
													  @[@(0),@(1)],
													  @[@(1),@(1)]
													  ];
    return _nearDigitLocations  ;
}



-(NSMutableArray *)numbersTable
{
	if (! _numbersTable ) _numbersTable = [[NSMutableArray alloc]init];
    return _numbersTable  ;
}



-(NSMutableArray *)rows
{
	if (! _rows ) _rows = [[NSMutableArray alloc]init];
    return _rows  ;
}


-(id)init
{
	self = [super init];
    if (self)
		{
		
		}
	return self;
}




- (id)initFromNumberString: (NSString *)numberString
{
  	self = [self init];
	if (self)
		{
		int x = 0;
		for (int i=0; i < [numberString length]; i++)
			{
			NSString *oneChar = [numberString substringWithRange:NSMakeRange(i, 1)];
			self.rows[x] = oneChar;
			if (x == 4)	// 5 items in the row, add it to the main array
				{
				[self.numbersTable addObject:self.rows];
				x = 0;
				
				self.rows = nil;
				} else
					x++;
			}
		}
    return self;
}


#define StartDigitLocation 1
#define StartCharacterNumber 1


-(void)checkForPrimes
{
	
	NSString *cDigit = @"";
	int x = 0;
	int y = 0;
	int numDigits = 0;
	
	// Go through each digit in the table to use as starting digit, build from there.
	//
	// This could have been elimiated.   Really this should just have been done by the checkNewNumberWithNewDigit Routine
	for (x=0; x<=5; x++)
		for (y=0; y<=5; y++)
			{
			cDigit = self.numbersTable[y][x]; // Gets the first digit, now create numbers from the sounding digits
			numDigits++;
			if (numDigits < 6)
				{
				GRNumber *primeCheck = [[GRNumber alloc] initFromNumberString:cDigit];
				
				[primeCheck checkNewNumberWithNewDigit:StartDigitLocation
										lastCharNumber:StartCharacterNumber
									  lastnumberString:cDigit];
				}
			}
	
	return;
}






@end



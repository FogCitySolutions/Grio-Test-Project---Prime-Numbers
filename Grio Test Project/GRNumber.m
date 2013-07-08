//
//  GRoneDigit.m
//  Grio Test Project
//
//  Created by Fog City Solutions on 7/3/13.
//  Copyright (c) 2013 GR. All rights reserved.
//

#import "GRNumber.h"


@implementation GRNumber


-(id)initFromNumberString:(NSString *)numberString

// Gets the number digit, appends it to the string.  Checks to see if the number now contains 5 digits.
// if it does, it checks to see if it is prime, and if it is , adds it to the list of primes.
// it then removes that digit, and creates another GRNumber object with the next digit location.
// Once digit location hits 8, it releases the object so that calling object can adjust it's location number a
// and do the same thing.

// if the number does not contain 5 digits yet, it calls the object again so that the next level down can adds a digit
// and, does this all again.

-(void )checkNewNumberWithNewDigit: (int)lastDigitLocationNumber
					lastCharNumber: (int)lastCharNumber
				  lastnumberString: (NSString *)lastNumberString	
{

	if (self.digitLocationNumber < 8) // Switch to the next number
		{
		NSString *newDigit =  self.numbersTable[self.digitLocationNumber][self.charNumber];
		NSString *peelOffOldDigit = [lastNumberString substringToIndex:[lastNumberString length]-1]; // You already tried 1332, no take of the 2, and add the next digit next to it.
		NSString *newNumber = [peelOffOldDigit stringByAppendingString:newDigit]; 
		self.digitLocationNumber = lastDigitLocationNumber + 1;

		self.charNumber = lastCharNumber + 1;
		if (self.charNumber == 5) // Hey!   Full number!  Check to see if it is prime.
		{
			if ([self isPrime:[newNumber intValue]])
				[super.primeNumbers addObject:newNumber];
			}
			else
			{
			// Don't have enough characters, so go get another one.
			[self checkNewNumberWithNewDigit:lastDigitLocationNumber
							  lastCharNumber:lastCharNumber
							lastnumberString:lastNumberString];
			}
		}
	return; // We are done with this number, we have checked all the possibilties, go on to the next number
}




-(BOOL) isPrime:(int)number
{
	BOOL isPrime = YES;
	
	for (int i=2; i < number -1; i++)
		{
		if (number % i == 0)			
			{			
			isPrime = NO;
				break;
			}		
		}
	return isPrime;
}


@end

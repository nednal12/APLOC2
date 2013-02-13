//
//  antInsect.m
//  APLOC2 Week 1
//
//  Created by Brent Marohnic on 2/11/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "antInsect.h"

@implementation antInsect

@synthesize homeInvader, sheerNumber, typeOfAnt;

// set unique data members from within INIT

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setInsectName:@"ant"];
        [self setTypeOfAnt:CARPENTER];
        [self setHomeInvader: 8];
        [self setSheerNumber: 9];
        
    }
    return self;
}


// override the base insect method
-(int)calculateAnnoyanceFactor
{
    if (typeOfAnt == BLACK)
    {
        [self setAnnoyanceFactor:self.homeInvader + self.sheerNumber - 2];
        [self setInsectName:@"black ant"];
    }
    else if (typeOfAnt == RED)
    {
        [self setAnnoyanceFactor:self.homeInvader + self.sheerNumber + 0];
        [self setInsectName:@"red ant"];
    }
    else if (typeOfAnt == CARPENTER)
    {
        [self setAnnoyanceFactor:self.homeInvader + self.sheerNumber + 2];
        [self setInsectName:@"carpenter ant"];
    }
    else
    {
        NSLog(@"Please specify a valid type of ant.");
    }
    
    NSLog(@"The ant has an annoyance factor of %i out of 20.", self.annoyanceFactor);
    return self.annoyanceFactor;
}


@end

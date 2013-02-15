//
//  swimEvent.m
//  APLOCWeek2
//
//  Created by Brent Marohnic on 2/14/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "swimEvent.h"

@implementation swimEvent

@synthesize waterTemp, eventDistance, eventName;

// set unique data members from within INIT

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setWaterTemp:55];
        [self setEventDistance:3];
        [self setEventName:@"Swimming"];
    }
    return self;
}

// override the base event method
// handicap equals the (absolute value of (optimum water temp - water temp) * 0.1) * (absolute value of (optimum water temp - water temp)
// distanceHandicap equals the best training time for one mile * (distance * 1.1)

-(float)calculateEventTime
{
    float handicap;
    float distanceHandicap;
    
    handicap = abs(72 - waterTemp) * 0.1 * abs(72 - waterTemp);
    distanceHandicap = 15 * (eventDistance * 1.1);
    
    [self setEventTimeInMinutes:(handicap + distanceHandicap)];
    
    return self.eventTimeInMinutes;
}

@end

//
//  bikeEvent.m
//  APLOCWeek2
//
//  Created by Brent Marohnic on 2/14/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "bikeEvent.h"

@implementation bikeEvent

@synthesize elevationInFeet, eventDistance, eventName;

// set unique data members from within INIT

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setElevationInFeet:5500];
        [self setEventDistance:120];
        [self setEventName:@"Cycling"];
    }
    return self;
}

// override the base event method
// handicap equals the (absolute value of (optimum elevation - current elevation) * 0.01) * (absolute value of (optimum elevation - current elevation)
// distanceHandicap equals the best training time for one mile * (distance * 1.05)

-(float)calculateEventTime
{
    float handicap;
    float distanceHandicap;
    
    handicap = abs(25 - elevationInFeet) * 0.001;
    distanceHandicap = 2 * (eventDistance * 1.05);
    
    [self setEventTimeInMinutes:(handicap + distanceHandicap)];
    
    return self.eventTimeInMinutes;
}


@end

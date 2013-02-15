//
//  runEvent.m
//  APLOCWeek2
//
//  Created by Brent Marohnic on 2/14/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "runEvent.h"

@implementation runEvent

@synthesize terrainType, eventDistance, eventName;

// set unique data members from within INIT

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setTerrainType:terrainEnum];
        [self setEventDistance:26];
        [self setEventName:@"Running"];
    }
    return self;
}

// override the base event method
// handicap equals a factor derived from the type of terrain on which the event occurs
// distanceHandicap equals the best training time for one mile * (distance * 1.05)

-(float)calculateEventTime
{
    float handicap;
    float distanceHandicap;
    
    if (terrainType == PAVEDESTREETS)
    {
        handicap = PAVEDESTREETS;
    }
    else if (terrainType == MIXEDSURFACE)
    {
        handicap = MIXEDSURFACE * (MIXEDSURFACE * 0.1);
    }
    else handicap = CROSSCOUNTRY * (CROSSCOUNTRY * 0.1);
    
    
    distanceHandicap = 8 * (eventDistance * 1.05);
    
    [self setEventTimeInMinutes:(handicap + distanceHandicap)];
    
    return self.eventTimeInMinutes;
}


@end

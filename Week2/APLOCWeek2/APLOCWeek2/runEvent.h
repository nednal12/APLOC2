//
//  runEvent.h
//  APLOCWeek2
//
//  Created by Brent Marohnic on 2/14/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "baseEvent.h"

@interface runEvent : baseEvent
{
    int terrainEnum;
}

typedef enum
{
    PAVEDESTREETS,
    MIXEDSURFACE,
    CROSSCOUNTRY
} terrainEnum;

// event specific data members used to calculate event time

@property int terrainType;

@end

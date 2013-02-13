//
//  antInsect.h
//  APLOC2 Week 1
//
//  Created by Brent Marohnic on 2/11/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "baseInsect.h"

@interface antInsect : baseInsect
{
    int antType;
}

typedef enum
{
    BLACK,
    RED,
    CARPENTER
} antType;

// insect specific data members used to calculate overall insect annoyance level
@property int homeInvader;
@property int sheerNumber;
@property int typeOfAnt;

@end

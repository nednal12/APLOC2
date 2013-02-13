//
//  baseInsect.h
//  APLOC2 Week 1
//
//  Created by Brent Marohnic on 2/11/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseInsect : NSObject
{
    int insectEnum;
}

typedef enum
{
    CRICKET,
    BUTTERFLY,
    ANT
} insectEnum;

// data members for various insect characteristics

@property int numberOfLegs;
@property int numberOfWings;
@property NSString *insectName;
@property int annoyanceFactor;

// initialize
-(id)init;

// calculate annoyance factor
-(int)calculateAnnoyanceFactor;

@end

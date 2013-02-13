//
//  insectFactory.h
//  APLOC2 Week 1
//
//  Created by Brent Marohnic on 2/11/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseInsect.h"
#import "cricketInsect.h"
#import "butterflyInsect.h"
#import "antInsect.h"

@interface insectFactory : NSObject

+(baseInsect *)createNewInsect:(int)insectType;

@end

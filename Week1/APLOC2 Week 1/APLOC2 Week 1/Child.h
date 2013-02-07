//
//  Child.h
//  APLOC2 Week 1
//
//  Created by Brent Marohnic on 2/7/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Child : NSObject
{
    int intChild;
    float fltChild;
    BOOL blnChild;
    
}

-(NSString*)showChild;

@property int intChild;

@end

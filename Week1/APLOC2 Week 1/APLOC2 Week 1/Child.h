//
//  Child.h
//  APLOC2 Week 1
//
//  Created by Brent Marohnic on 2/7/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    CHILDTYPE_GOOD=0,
    CHILDTYPE_BAD,
    CHILDTYPE_PERFECT,
    CHILDTYPE_ROTTEN
    
} EChildType;

@interface Child : NSObject
{
@public
    NSString *strName;
    int intChild;
    EChildType childType;
}

-(id)initWithDetails:(int)inpIntChild inpStrName:(NSString*)inpStrName;

-(void)showName;

-(NSString*)showChild;

@property int intChild;

@end

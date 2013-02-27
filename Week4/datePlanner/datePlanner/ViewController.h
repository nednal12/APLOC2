//
//  ViewController.h
//  datePlanner
//
//  Created by Brent Marohnic on 2/19/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController2.h"

@interface ViewController : UIViewController <viewController2Delegate>
{
    IBOutlet UITextView *mainTextView;
    
    
}

-(IBAction)showSecondView:(id)sender;


@end

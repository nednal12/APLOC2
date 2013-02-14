//
//  ViewController.h
//  APLOCWeek2
//
//  Created by Brent Marohnic on 2/14/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UISegmentedControl *segmentControl;
    UIViewController *viewController;
}

-(IBAction)onChange:(id)sender;

-(IBAction)onClick:(id)sender;

@end

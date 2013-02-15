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
    IBOutlet UIStepper *stepperControl;
    IBOutlet UIButton *cricketButton;
    IBOutlet UIButton *butterflyButton;
    IBOutlet UIButton *antButton;
    IBOutlet UIButton *executeButton;
    IBOutlet UITextField *textBox;
}

-(IBAction)onChange:(id)sender;

-(IBAction)onClick:(id)sender;

-(IBAction)onStepChange:(id)sender;

-(IBAction)onClassButtonClick:(id)sender;

@end

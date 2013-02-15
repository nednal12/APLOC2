//
//  ViewController.m
//  APLOCWeek2
//
//  Created by Brent Marohnic on 2/14/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

// This event is trigged by the Compete button.
// Begin by identifying which subclass is currently being generated.
// This is accomplished by cycling thru the subclass buttons' enabled property since the last one pressed will now be disabled.
// The Compete button and stepper control remain disabled until one of the subclass buttons is pressed.
// The subclass button corresponding to the class that was just generated is enabled so that it can be used again.

-(IBAction)onCompeteClick:(id)sender
{
    
    if (swimButton.enabled == FALSE)
    {
        swimEvent *newSwimEvent = (swimEvent*)[eventFactory createNewEvent:SWIM];
        [newSwimEvent setWaterTemp: 70];
        [newSwimEvent setEventDistance:stepperControl.value];
        
        textBox.text = [NSString stringWithFormat:@"%@ ~ %.4f Minutes", [newSwimEvent eventName], [newSwimEvent calculateEventTime]];
        
        swimButton.enabled = TRUE;
        
    }
    else if (bikeButton.enabled == FALSE)
    {
        bikeEvent *newBikeEvent = (bikeEvent*)[eventFactory createNewEvent:BIKE];
        [newBikeEvent setElevationInFeet:2375];
        [newBikeEvent setEventDistance:stepperControl.value];
        
        
        textBox.text = [NSString stringWithFormat:@"%@ ~ %.4f Minutes", [newBikeEvent eventName], [newBikeEvent calculateEventTime]];
        
        bikeButton.enabled = TRUE;
        
    }
    else
    {
        runEvent *newRunEvent = (runEvent*)[eventFactory createNewEvent:RUN];
        [newRunEvent setTerrainType:PAVEDESTREETS];
        [newRunEvent setEventDistance:stepperControl.value];
        
        
        textBox.text = [NSString stringWithFormat:@"%@ ~ %.4f Minutes", [newRunEvent eventName], [newRunEvent calculateEventTime]];
        
        runButton.enabled = TRUE;
        
    }
    
    competeButton.enabled = FALSE;
    stepperControl.enabled = FALSE;
}


// This event will be called by all three subclass buttons.
// Identify which button called the event by using the sender's tag identifier.
// Populate the text box with the initial 1 mile text.
// Enable the stepper control and set the max value for the stepper depending on which event has been selected and set the value to zero.
// Enable the other two subclass buttons in case the user changes his/her mind.
// Disable the subclass button that initiated the event.
// Enable the Compete button so that the user can perform the calculation.

-(IBAction)onClassButtonClick:(id)sender
{
    UIButton *classButton = (UIButton*)sender;
    if ([sender tag] == 0)
    {
        textBox.text = @"Swim 1 mile";
        stepperControl.enabled = TRUE;
        stepperControl.maximumValue = 3;
        classButton.enabled = FALSE;
        runButton.enabled = TRUE;
        bikeButton.enabled = TRUE;
        stepperControl.value = 0;
        competeButton.enabled = TRUE;
    }
    else if ([sender tag] == 1)
    {
        textBox.text = @"Bike 1 mile";
        stepperControl.enabled = TRUE;
        stepperControl.maximumValue = 120;
        classButton.enabled = FALSE;
        runButton.enabled = TRUE;
        swimButton.enabled = TRUE;
        stepperControl.value = 0;
        competeButton.enabled = TRUE;
        
    }
    else if ([sender tag] == 2)
    {
        textBox.text = @"Run 1 mile";
        stepperControl.enabled = TRUE;
        stepperControl.maximumValue = 26;
        classButton.enabled = FALSE;
        swimButton.enabled = TRUE;
        bikeButton.enabled = TRUE;
        stepperControl.value = 0;
        competeButton.enabled = TRUE;
        
    }
}


// This event will be called by the stepper control.
// Separate out the value of one logic from the remaining logic in order to get the sentence in the text box grammatically accurate.
// Use the current value of the stepper to increment the value displayed in the text box message.

-(IBAction)onStepChange:(id)sender
{
    UIStepper *stepControl = (UIStepper*) sender;
    if (stepControl != nil)
    {
        int currentValue = stepControl.value;
        
        if (currentValue == 1)
        {
            if (swimButton.enabled == FALSE)
            {
                textBox.text = @"Swim 1 mile";
            }
            else if (bikeButton.enabled == FALSE)
            {
                textBox.text = @"Bike 1 mile";
            }
            else textBox.text = @"Run 1 mile";
        }
        
        else
        {
            if (swimButton.enabled == FALSE)
            {
                textBox.text = [NSString stringWithFormat:@"Swim %d miles", currentValue];
            }
            else if (bikeButton.enabled == FALSE)
            {
                textBox.text = [NSString stringWithFormat:@"Bike %d miles", currentValue];
            }
            else textBox.text = [NSString stringWithFormat:@"Run %d miles", currentValue];
        }
        
    }
}


// This event is used to display the second view.

-(IBAction)onClick:(id)sender
{
    ViewController2 *secondView = [[ViewController2 alloc] initWithNibName:@"ViewController2" bundle:nil];
    
    if (secondView != nil)
    {
        [self presentViewController:secondView animated:TRUE completion:nil];
    }
}


// This event is used to change the background color of the primary view.
-(IBAction)onChange:(id)sender
{
    UISegmentedControl *segControl = (UISegmentedControl*)sender;
    if (segControl != nil)
    {
        int selectedIndex = segControl.selectedSegmentIndex;
        
        if (selectedIndex == 0)
        {
            self.view.backgroundColor = [UIColor redColor];
        }
        else if (selectedIndex == 1)
        {
            self.view.backgroundColor = [UIColor blueColor];
        }
        else if (selectedIndex == 2)
        {
            self.view.backgroundColor = [UIColor greenColor];
        }

    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

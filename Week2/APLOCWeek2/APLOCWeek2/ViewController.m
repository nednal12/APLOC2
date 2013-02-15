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

-(IBAction)onCompeteClick:(id)sender
{
    swimEvent *newSwimEvent = (swimEvent*)[eventFactory createNewEvent:SWIM];
    [newSwimEvent setWaterTemp: 70];
    
    textBox.text = [NSString stringWithFormat:@"Event Time of %.2f Minutes", [newSwimEvent calculateEventTime]];
}


-(IBAction)onClassButtonClick:(id)sender
{
    UIButton *classButton = (UIButton*)sender;
    if (classButton.tag == 0)
    {
        textBox.text = @"Swim 1 mile";
        stepperControl.enabled = TRUE;
        stepperControl.maximumValue = 3;
        classButton.enabled = FALSE;
        runButton.enabled = TRUE;
        bikeButton.enabled = TRUE;
        stepperControl.value = 0;
    }
    else if (classButton.tag == 1)
    {
        textBox.text = @"Bike 1 mile";
        stepperControl.enabled = TRUE;
        stepperControl.maximumValue = 120;
        classButton.enabled = FALSE;
        runButton.enabled = TRUE;
        swimButton.enabled = TRUE;
        stepperControl.value = 0;
        
    }
    else if (classButton.tag == 2)
    {
        textBox.text = @"Run 1 mile";
        stepperControl.enabled = TRUE;
        stepperControl.maximumValue = 26;
        classButton.enabled = FALSE;
        swimButton.enabled = TRUE;
        bikeButton.enabled = TRUE;
        stepperControl.value = 0;
        
    }
}

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

-(IBAction)onClick:(id)sender
{
    ViewController2 *secondView = [[ViewController2 alloc] initWithNibName:@"ViewController2" bundle:nil];
    
    if (secondView != nil)
    {
        [self presentViewController:secondView animated:TRUE completion:nil];
    }
}

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

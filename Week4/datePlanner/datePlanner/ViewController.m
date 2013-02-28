//
//  ViewController.m
//  datePlanner
//
//  Created by Brent Marohnic on 2/19/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController


// create an instance of the gesture recognizer and set the function to be called to onSwipe.
-(void)viewWillAppear:(BOOL)animated
{
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabel addGestureRecognizer:rightSwiper];
    
    [super viewWillAppear:animated];
}

// Once the view is loaded, retrieve any existing text form NSUserDefaults and populate the text view.
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
    {
        NSString *textViewString = [defaults objectForKey:@"eventText"];
        
        mainTextView.text = textViewString;
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// This function is called when the user swipes to the right. It is triggered from within viewWillAppear.
// Decalare an instance of ViewController2.
// Inform ViewController that it will be responsisble for processing any data transfered back
// from secondView via delegate.
// Show secondView.
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    ViewController2 *secondView = [[ViewController2 alloc] initWithNibName:@"ViewController2" bundle:nil];
    
    if (secondView != nil)
    {
        secondView.delegate = self;
        
        [self presentViewController:secondView animated:TRUE completion:nil];
    }
}


// Begin by verifying that the user actually typed an event into the event text field.
// If a blank string is returned, then do nothing.
// Allocate a local NSMutableString that will be used to construct the final event entry.
// Allocate a local NSDateFormatter that will hold the date and time returned from secondView.
// Set the style for both the date and time portions of the date.
// Construct the final text view text by appending the new info returned from secondView to the
// existing text.
// Set the text view text equal to the newly constructed mutable string.

-(void)onClose:(NSString *)eventString pickerDate:(NSDate *)pickerDate
{

    if (![eventString isEqual: @""])
    {
        
        NSMutableString *newTextViewText = [[NSMutableString alloc] initWithString:mainTextView.text];
        
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        
        NSString *dateString = [[NSString alloc] initWithString:[dateFormatter stringFromDate:pickerDate]];
    
        [newTextViewText appendString:@"\n\nNew Event: "];
    
        [newTextViewText appendString:eventString];
        
        [newTextViewText appendString:@"\n"];
        
        [newTextViewText appendString:dateString];
    
        mainTextView.text = newTextViewText;
    
    }
        
}


// This function is called when the user presses the save button.
// It is responsible for collecting the text contained within the text view and saving it out to NSUserDefaults.
-(IBAction)onSave:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
    {
        NSString *textViewString = mainTextView.text;
        
        [defaults setObject:textViewString forKey:@"eventText"];
        
        // saves the main text view text to user defaults
        [defaults synchronize];
    }
}

@end

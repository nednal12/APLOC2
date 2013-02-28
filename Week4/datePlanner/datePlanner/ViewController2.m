//
//  ViewController2.m
//  datePlanner
//
//  Created by Brent Marohnic on 2/19/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

// Synthesize delegate in order to allow for it to be accessed outside of this view.
@synthesize delegate;

-(void)viewWillAppear:(BOOL)animated
{
    leftSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    leftSwiper.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLabel addGestureRecognizer:leftSwiper];
    
    [super viewWillAppear:animated];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        delegate = nil;
        
        // Custom initialization
    }
    return self;
}


// Set the minimum date of the date picker to the current date.
// Any attempt at selecting a date prior to today's date will not be allowed.
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    eventDatePicker.minimumDate = [NSDate date];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// Call the onClose delegate and send back the text field text and the date picker date.
// Dismiss secondView.
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if (delegate != nil)
    {
        [delegate onClose:eventTextField.text pickerDate:eventDatePicker.date];
    }
    
    [self dismissViewControllerAnimated:TRUE completion:nil];
}


// iOS automatically triggers the keyboard once the user clicks inside the text field.
// Show the hide keyboard button and label.
// Hide the date picker label.
-(IBAction)onTextEnter:(id)sender
{
    btnHideKeyboard.hidden = FALSE;
    lblHideKeyboard.hidden = FALSE;
    lblDatePicker.hidden = TRUE;
    
}


// Force close the keyboard by calling the resignFirstResponder method on the event text field.
// Hide the keboard button and label.
// Show the date picker label.
-(IBAction)hideKeyboard:(id)sender
{
    [eventTextField resignFirstResponder];
    
    btnHideKeyboard.hidden = TRUE;
    lblHideKeyboard.hidden = TRUE;
    lblDatePicker.hidden = FALSE;
}
@end

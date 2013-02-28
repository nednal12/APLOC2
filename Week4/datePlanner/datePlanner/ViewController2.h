//
//  ViewController2.h
//  datePlanner
//
//  Created by Brent Marohnic on 2/19/13.
//  Copyright (c) 2013 Brent Marohnic. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol viewController2Delegate <NSObject>


@required
-(void)onClose:(NSString*)eventString pickerDate:(NSDate*)pickerDate;

@end

@interface ViewController2 : UIViewController
{
    IBOutlet UIButton *btnHideKeyboard;
    IBOutlet UILabel *lblHideKeyboard;
    IBOutlet UILabel *lblDatePicker;
    IBOutlet UITextField *eventTextField;
    IBOutlet UIDatePicker *eventDatePicker;
    IBOutlet UILabel *swipeLabel;
    
    id<viewController2Delegate> delegate;
    
    UISwipeGestureRecognizer *leftSwiper;
    
}

-(IBAction)onTextEnter:(id)sender;

-(IBAction)hideKeyboard:(id)sender;

@property (strong) id<viewController2Delegate> delegate;

@end

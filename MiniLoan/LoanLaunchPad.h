//
//  LoanLaunchPad.h
//  MiniLoan
//
//  Created by Ping on 24/03/14.
//  Copyright (c) 2014 Yang Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YGLoanTermViewController.h"

@interface LoanLaunchPad : UIViewController <LoanTermDelegate>
{
//    UIPickerView *pickerView;
//    NSMutableArray *pickerArray;
    
    NSNumber *loanTerm; // days
}

@end

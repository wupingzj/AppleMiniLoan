//
//  LoanLaunchPad.h
//  MiniLoan
//
//  Created by Ping on 24/03/14.
//  Copyright (c) 2014 Yang Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoanLaunchPad : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
{
    UIPickerView *pickerView;
    NSMutableArray *pickerArray;
}

@property (weak, nonatomic) IBOutlet UIPickerView *myPicker;


@end

//
//  LoanLaunchPad.m
//  MiniLoan
//
//  Created by Ping on 24/03/14.
//  Copyright (c) 2014 Yang Ltd. All rights reserved.
//

#import "LoanLaunchPad.h"

@interface LoanLaunchPad ()

@end

@implementation LoanLaunchPad
@synthesize myPicker;

- (NSInteger)numberOfComponentsInPickerView: (UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger) component
{
    return [pickerArray count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [pickerArray objectAtIndex:row];
}

- (void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if ([[pickerArray objectAtIndex:row] isEqual:@"15 days"]) {
        NSLog(@"15 days selected!");
        
    }
    
    if ([[pickerArray objectAtIndex:row] isEqual:@"30 days"]) {
        NSLog(@"30 days selected!");
        
    }
    
    if ([[pickerArray objectAtIndex:row] isEqual:@"one month"]) {
        NSLog(@"One month selected!");
        
    }
    
    if ([[pickerArray objectAtIndex:row] isEqual:@"two monthes"]) {
        NSLog(@"Two monthes selected!");
    }
}

////////

//- (NSAttributedString *)pickerView:(UIPickerView *)pickerView attributedTitleForRow:(NSInteger)row forComponent:(NSInteger)component NS_AVAILABLE_IOS(6_0); // attributed title is favored if both methods are implemented
//- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view;
//
//- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component;
//////////

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    pickerArray = [[NSMutableArray alloc] init];
    
    [pickerArray addObject:@"15 days"];
    [pickerArray addObject:@"30 days"];
    [pickerArray addObject:@"one month"];
    [pickerArray addObject:@"two month"];
    [pickerArray addObject:@"one year"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

// hide keyboard when touching areas outside editting fields
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end

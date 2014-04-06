//
//  LoanLaunchPad.m
//  MiniLoan
//
//  Created by Ping on 24/03/14.
//  Copyright (c) 2014 Yang Ltd. All rights reserved.
//

#import "LoanLaunchPad.h"
#import "YGLoanTermViewController.h"

@interface LoanLaunchPad ()

@end

@implementation LoanLaunchPad

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
    loanTerm = [NSNumber numberWithInt:0];
    
    NSLog(@"LOAN PAD view loaded");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
 
    // Assume you have a viewHomeSegue defined that has the name of the segue you want to perform
    NSString * segueIdentifier = [segue identifier];
    if([segueIdentifier isEqualToString:@"SegueToLoanTerm"]){
        YGLoanTermViewController *termController = segue.destinationViewController;
        NSLog(@"current loan term in launch pad %@", loanTerm);
        termController.loanTerm = loanTerm;
        //termController.loanTerm = [NSNumber numberWithInt:27];
        NSLog(@"passing term to LoanTermVC: %i", [termController.loanTerm intValue]);
    }
}


#pragma mark - Hide Keyboard
// hide keyboard when touching areas outside editting fields
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end

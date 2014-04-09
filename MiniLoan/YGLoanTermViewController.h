//
//  YGLoanTermViewController.h
//  MiniLoan
//
//  Created by Ping on 30/03/14.
//  Copyright (c) 2014 Yang Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LoanTermDelegate;

@interface YGLoanTermViewController : UITableViewController {
}

@property (nonatomic, strong) NSNumber *loanTerm;
@property (nonatomic, assign) id<LoanTermDelegate> loanTermDelegate;

@end

@protocol LoanTermDelegate <NSObject>

- (void) loanTermSelected:(YGLoanTermViewController *) loanTermVC;

@end

//
//  YGLoanTerm.h
//  MiniLoan
//
//  Created by Ping on 8/04/14.
//  Copyright (c) 2014 Yang Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YGLoanTerm : NSObject
{
    NSArray *loanTerms;
    
}

@property (nonatomic, retain) NSArray *loanTerms;

+ (id) sharedInstance;

@end

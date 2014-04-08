//
//  YGLoanTerm.m
//  MiniLoan
//
//  Created by Ping on 8/04/14.
//  Copyright (c) 2014 Yang Ltd. All rights reserved.
//

#import "YGLoanTerm.h"

@implementation YGLoanTerm

@synthesize loanTerms;

#pragma mark singleton method
+(id) sharedInstance
{
    static YGLoanTerm *sharedInstance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken,
                  ^{
                      sharedInstance = [[YGLoanTerm alloc] init];
                      
                      // init property
                      
                  });
    return sharedInstance;
}

-(id) init
{
    if (self = [super init])
    {
        loanTerms = [NSArray arrayWithObjects:@"15 days", @"30 days", @"60 days", @"90 days", @"180 days", @"360 days", nil];
    }
    
    return self;
}

- (void) dealloc
{
    NSLog(@"Should NEVER been called.");
    assert(NO);
}

@end

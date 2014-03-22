//
//  Photo.m
//  MiniLoan
//
//  Created by Ping on 15/03/14.
//  Copyright (c) 2014 Yang Ltd. All rights reserved.
//

#import "Photo.h"

@implementation Photo
- (NSString*) caption {
    return caption;
}

- (NSString*) photographer {
    return photographer;
}

- (void) setCaption:(NSString *)input
{
    
    caption = input;
    
}

- (void) setPhotographer:(NSString *)input
{
    
    photographer = input;
}
@end

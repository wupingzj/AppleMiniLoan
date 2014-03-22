//
//  Photo.h
//  MiniLoan
//
//  Created by Ping on 15/03/14.
//  Copyright (c) 2014 Yang Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Photo : NSObject {
    NSString* caption;
    NSString* photographer;
}

- (NSString*) caption;
- (NSString*) photographer;
- (void) setCaption: (NSString*) input;
- (void) setPhotographer: (NSString*) input;

@end

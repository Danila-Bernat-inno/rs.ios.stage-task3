//
//  NSString+SafeGet.m
//  ios.stage-task
//
//  Created by Danila Bernat on 16/10/2024.
//

#import "NSString+SafeGet.h"

@implementation NSString (SafeGet)

- (unichar)getSafeFirstCharacterFromString {
    if (self.length < 1) {
        return UINT16_MAX;
    } else {
        return [self characterAtIndex:0];
    }
}

@end

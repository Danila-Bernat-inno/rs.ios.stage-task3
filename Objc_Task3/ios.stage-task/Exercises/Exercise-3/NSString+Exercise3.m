//
//  NSString+Exercise3.m
//  ios.stage-task
//
//  Created by Danila Bernat on 16/10/2024.
//

#import "NSString+Exercise3.h"

@implementation NSString (Exercise3)

// return unichar.maxValue when self.length < 1
- (unichar)getSafeFirstCharacterFromString {
    if (self.length < 1) {
        return UINT16_MAX;
    } else {
        return [self characterAtIndex:0];
    }
}

@end

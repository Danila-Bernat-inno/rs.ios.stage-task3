//
//  NSMutableString+Helpers.m
//  ios.stage-task
//
//  Created by Danila Bernat on 17/10/2024.
//

#import "NSMutableString+Helpers.h"

@implementation NSMutableString (Helpers)

- (unichar)getAndRemoveFirstLetter {
    if (self.length == 0) {
        return UINT16_MAX; 
    }
    unichar letter = [self characterAtIndex:0];
    [self deleteCharactersInRange:NSMakeRange(0, 1)];
    return letter;
}

- (void)addCharacter:(unichar)character {
    [self appendFormat:@"%C", character];
}

@end

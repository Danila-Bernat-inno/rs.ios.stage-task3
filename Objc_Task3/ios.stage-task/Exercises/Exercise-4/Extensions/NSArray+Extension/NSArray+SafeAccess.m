//
//  NSArray+SafeAccess.m
//  ios.stage-task
//
//  Created by Danila Bernat on 17/10/2024.
//

#import "NSArray+SafeAccess.h"

@implementation NSArray (SafeAccess)

- (BOOL)isElementValid:(NSUInteger)index {
    if (index < self.count && ![self[index] isKindOfClass:[NSNull class]]) {
        return YES;
    }
    return NO;
}

@end

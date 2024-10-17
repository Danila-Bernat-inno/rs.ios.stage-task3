//
//  NSArray+SafeAccess.h
//  ios.stage-task
//
//  Created by Danila Bernat on 17/10/2024.
//

#import <Foundation/Foundation.h>

@interface NSArray (SafeAccess)

- (BOOL)isElementValid:(NSUInteger)index;

@end

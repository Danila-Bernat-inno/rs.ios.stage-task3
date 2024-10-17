//
//  NSMutableArray+BinaryTreeNode.m
//  ios.stage-task
//
//  Created by Danila Bernat on 17/10/2024.
//

#import "NSMutableArray+BinaryTreeNode.h"

@implementation NSMutableArray (NestedAdd)

- (void)addElement:(id)element toInnerArrayAtIndex:(NSUInteger)index {
    if (index >= [self count]) {
        for (NSUInteger i = [self count]; i <= index; i++) {
            [self addObject:[NSMutableArray new]];
        }
    }
    NSMutableArray *innerArray = self[index];
    [innerArray addObject:element];
}

@end

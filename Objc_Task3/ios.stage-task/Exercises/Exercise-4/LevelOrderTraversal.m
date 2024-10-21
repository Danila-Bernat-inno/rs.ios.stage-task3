#import "LevelOrderTraversal.h"

NSInteger processNode(NSInteger level, NSInteger nodeIndex, NSArray *treeArray, NSMutableArray<NSMutableArray*> *resultArrayRef) {
    // add node
    if ([treeArray isElementValid:nodeIndex]) {
        [resultArrayRef addElement:treeArray[nodeIndex] toInnerArrayAtIndex:level];
    } else {
        return nodeIndex + 1;
    }
    // left
    NSInteger rightNodeIndex;
    if ([treeArray isElementValid:nodeIndex + 1]) {
        rightNodeIndex = processNode(level + 1, nodeIndex + 1, treeArray, resultArrayRef);
    } else {
        rightNodeIndex = nodeIndex + 2;
    }
    // right
    NSInteger nextNodeIndex;
    if ([treeArray isElementValid:rightNodeIndex]) {
        nextNodeIndex = processNode(level + 1, rightNodeIndex, treeArray, resultArrayRef);
    } else {
        nextNodeIndex = rightNodeIndex + 1;
    }
    // return next node
    return nextNodeIndex;
}

NSArray *LevelOrderTraversalForTree(NSArray *tree) {
    NSMutableArray *resultArray = [NSMutableArray new];
    processNode(0, 0, tree, resultArray);
    return resultArray;
}

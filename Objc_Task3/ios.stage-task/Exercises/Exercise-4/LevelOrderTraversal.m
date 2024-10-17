#import "LevelOrderTraversal.h"

NSInteger processNode(NSInteger level, NSInteger nodeIndex, NSArray *treeArray, NSMutableArray<NSMutableArray*> *resultArrayRef) {
    // add node
    if (nodeIndex >= treeArray.count ||
        [treeArray[nodeIndex] isKindOfClass:[NSNull class]]) {
        return nodeIndex + 1;
    }
    [resultArrayRef addElement:treeArray[nodeIndex] toInnerArrayAtIndex:level];
    // left
    NSInteger rightNodeIndex;
    if (nodeIndex + 1 >= treeArray.count ||
        [treeArray[nodeIndex + 1] isKindOfClass:[NSNull class]]
        ) {
        rightNodeIndex = nodeIndex + 2;
    } else {
        rightNodeIndex = processNode(level + 1, nodeIndex + 1, treeArray, resultArrayRef);
    }
    // right
    NSInteger nextNodeIndex;
    if (rightNodeIndex >= treeArray.count ||
        [treeArray[rightNodeIndex] isKindOfClass:[NSNull class]]) {
        nextNodeIndex = rightNodeIndex + 1;
    } else {
        nextNodeIndex = processNode(level + 1, rightNodeIndex, treeArray, resultArrayRef);
    }
    // return next node
    return nextNodeIndex;
}

NSArray *LevelOrderTraversalForTree(NSArray *tree) {
    NSMutableArray *resultArray = [NSMutableArray new];
    processNode(0, 0, tree, resultArray);
    return resultArray;
}

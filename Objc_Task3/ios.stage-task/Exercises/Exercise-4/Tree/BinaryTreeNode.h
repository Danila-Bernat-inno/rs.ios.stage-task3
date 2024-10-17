//
//  BinaryTreeNode.h
//  ios.stage-task
//
//  Created by Danila Bernat on 17/10/2024.
//

#import <Foundation/Foundation.h>

@interface BinaryTreeNode : NSObject

@property BinaryTreeNode *parent;
@property NSInteger value;
@property BinaryTreeNode *left;
@property BinaryTreeNode *right;

@end

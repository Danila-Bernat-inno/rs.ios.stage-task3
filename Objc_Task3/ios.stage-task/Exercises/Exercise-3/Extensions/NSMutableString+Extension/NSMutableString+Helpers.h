//
//  NSMutableString+Helpers.h
//  ios.stage-task
//
//  Created by Danila Bernat on 17/10/2024.
//

#import <Foundation/Foundation.h>

@interface NSMutableString (Helpers)

// return UINT16_MAX when self.length < 1
- (unichar)getAndRemoveFirstLetter;
- (void)addCharacter:(unichar)character;

@end

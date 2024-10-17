//
//  NSString+SafeGet.h
//  ios.stage-task
//
//  Created by Danila Bernat on 16/10/2024.
//

#import <Foundation/Foundation.h>

@interface NSString (SafeGet)

// return UINT16_MAX when self.length < 1
- (unichar)getSafeFirstCharacterFromString;

@end

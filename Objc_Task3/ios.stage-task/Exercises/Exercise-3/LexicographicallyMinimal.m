#import "LexicographicallyMinimal.h"
#import "NSString+Exercise3.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

- (NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
    NSMutableString *string1Mutable = [string1 mutableCopy];
    NSMutableString *string2Mutable = [string2 mutableCopy];
    NSMutableString *resultString = [NSMutableString new];

    while (string1Mutable.length > 0 || string2Mutable.length > 0) {
        unichar letter = [self getAndRemoveLexicographicallyMinimalLetterFromString1:string1Mutable andString2: string2Mutable];
        [self addCharacter:letter toMutableString:resultString];
    }

    return resultString;
}

- (unichar)getAndRemoveLexicographicallyMinimalLetterFromString1:(NSMutableString *)string1 andString2:(NSMutableString *)string2 {
    unichar letterFromStr1 = [string1 getSafeFirstCharacterFromString];
    unichar letterFromStr2 = [string2 getSafeFirstCharacterFromString];

    if ((NSInteger)letterFromStr1 <= (NSInteger)letterFromStr2) {
        return [self getAndRemoveFirstLetterFromString:string1];
    } else {
        return [self getAndRemoveFirstLetterFromString:string2];
    }
}

- (unichar)getAndRemoveFirstLetterFromString:(NSMutableString *)string {
    unichar letter = [string characterAtIndex:0];
    [string deleteCharactersInRange:NSMakeRange(0, 1)];
    return letter;
}

- (void)addCharacter:(unichar)character toMutableString:(NSMutableString *)mutableString {
    [mutableString appendFormat:@"%C", character];
}

@end

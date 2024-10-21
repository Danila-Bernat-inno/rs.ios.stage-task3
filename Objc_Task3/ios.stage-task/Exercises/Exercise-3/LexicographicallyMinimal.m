#import "LexicographicallyMinimal.h"
#import "NSString+SafeGet.h"
#import "NSMutableString+Helpers.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

- (NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
    NSMutableString *string1Mutable = [string1 mutableCopy];
    NSMutableString *string2Mutable = [string2 mutableCopy];
    NSMutableString *resultString = [NSMutableString new];

    [self saveAndRemoveLexicographicallyMinimalLettersFromString1:string1Mutable andString2:string2Mutable toStringRef:resultString];

    return resultString;
}

- (void)saveAndRemoveLexicographicallyMinimalLettersFromString1:(NSMutableString *)string1
                                                     andString2:(NSMutableString *)string2
                                                    toStringRef:(NSMutableString *)resultStringRef {
    unichar letterFromStr1 = [string1 getSafeFirstCharacterFromString];
    unichar letterFromStr2 = [string2 getSafeFirstCharacterFromString];
    unichar resultLetter;

    if (letterFromStr1 == UINT16_MAX && letterFromStr2 == UINT16_MAX) {
        return;
    }

    if ((NSInteger)letterFromStr1 <= (NSInteger)letterFromStr2) {
        resultLetter = [string1 getAndRemoveFirstLetter];
    } else {
        resultLetter = [string2 getAndRemoveFirstLetter];
    }

    [resultStringRef addCharacter:resultLetter];
    [self saveAndRemoveLexicographicallyMinimalLettersFromString1:string1 andString2:string2 toStringRef:resultStringRef];
}

@end

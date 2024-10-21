#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    if (ratingArray.count < 3) { return 0; }
    NSInteger result = [self countTeams:ratingArray] + [self countTeams:[ratingArray reverseObjectEnumerator].allObjects];
    return result;
}

// Seeks teams by rule: ratingArray[i] > ratingArray[j] > ratingArray[k]
- (NSInteger)countTeams:(NSArray<NSNumber *>*)ratingArray {
    int result = 0;
    for (int i = 0; i < ratingArray.count - 2; i++) {
        for (int j = i + 1; j < ratingArray.count - 1; j++) {
            if (!(ratingArray[i].intValue > ratingArray[j].intValue)) { continue; }
            for (int k = j + 1; k < ratingArray.count; k++) {
                if (ratingArray[j].intValue > ratingArray[k].intValue) {
                    result++;
                }
            }
        }
    }
    return result;
}
@end

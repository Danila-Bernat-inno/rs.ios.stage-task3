#import "DateHelper.h"

@implementation DateHelper

+ (NSDateFormatter *)sharedDateFormatter {
    static NSDateFormatter *dateFormatter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dateFormatter = [[NSDateFormatter alloc] init];
    });
    return dateFormatter;
}

#pragma mark - First

- (NSString *)monthNameBy:(NSUInteger)monthNumber {
    if (monthNumber < 0 || monthNumber > 12) {
        return nil;
    }
    DateHelper.sharedDateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
    DateHelper.sharedDateFormatter.dateFormat = @"M";
    NSDate *date = [DateHelper.sharedDateFormatter dateFromString:[NSString stringWithFormat:@"%lu", monthNumber]];
    DateHelper.sharedDateFormatter.dateFormat = @"MMMM";
    return [DateHelper.sharedDateFormatter stringFromDate:date];
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
    DateHelper.sharedDateFormatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ss'Z'";
    NSDate *nsDate = [DateHelper.sharedDateFormatter dateFromString:date];
    DateHelper.sharedDateFormatter.dateFormat = @"d";
    return [DateHelper.sharedDateFormatter stringFromDate:nsDate].intValue;

}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    DateHelper.sharedDateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru_RU"];
    DateHelper.sharedDateFormatter.dateFormat = @"EE";
    return [DateHelper.sharedDateFormatter stringFromDate:date];
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    DateHelper.sharedDateFormatter.dateFormat = @"yw";
    return ([DateHelper.sharedDateFormatter stringFromDate:[NSDate now]] == [DateHelper.sharedDateFormatter stringFromDate:date]);
}

@end

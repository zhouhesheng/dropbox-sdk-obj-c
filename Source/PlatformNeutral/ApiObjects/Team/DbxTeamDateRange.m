///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamDateRange.h"

@implementation DbxTeamDateRange 

- (instancetype)initWithStartDate:(NSDate *)startDate endDate:(NSDate *)endDate {

    self = [super init];
    if (self != nil) {
        _startDate = startDate;
        _endDate = endDate;
    }
    return self;
}

- (instancetype)init {
    return [self initWithStartDate:nil endDate:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamDateRangeSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamDateRangeSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamDateRangeSerializer serialize:self] description];
}

@end


@implementation DbxTeamDateRangeSerializer 

+ (NSDictionary *)serialize:(DbxTeamDateRange *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if (valueObj.startDate) {
        jsonDict[@"start_date"] = [DbxNSDateSerializer serialize:valueObj.startDate dateFormat:@"%Y-%m-%d"];
    }
    if (valueObj.endDate) {
        jsonDict[@"end_date"] = [DbxNSDateSerializer serialize:valueObj.endDate dateFormat:@"%Y-%m-%d"];
    }

    return jsonDict;
}

+ (DbxTeamDateRange *)deserialize:(NSDictionary *)valueDict {
    NSDate *startDate = valueDict[@"start_date"] ? [DbxNSDateSerializer deserialize:valueDict[@"start_date"] dateFormat:@"%Y-%m-%d"] : nil;
    NSDate *endDate = valueDict[@"end_date"] ? [DbxNSDateSerializer deserialize:valueDict[@"end_date"] dateFormat:@"%Y-%m-%d"] : nil;

    return [[DbxTeamDateRange alloc] initWithStartDate:startDate endDate:endDate];
}

@end
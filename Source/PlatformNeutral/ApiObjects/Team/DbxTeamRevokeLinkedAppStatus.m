///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamRevokeLinkedAppError.h"
#import "DbxTeamRevokeLinkedAppStatus.h"

@implementation DbxTeamRevokeLinkedAppStatus 

- (instancetype)initWithSuccess:(NSNumber *)success errorType:(DbxTeamRevokeLinkedAppError *)errorType {

    self = [super init];
    if (self != nil) {
        _success = success;
        _errorType = errorType;
    }
    return self;
}

- (instancetype)initWithSuccess:(NSNumber *)success {
    return [self initWithSuccess:success errorType:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamRevokeLinkedAppStatusSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamRevokeLinkedAppStatusSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamRevokeLinkedAppStatusSerializer serialize:self] description];
}

@end


@implementation DbxTeamRevokeLinkedAppStatusSerializer 

+ (NSDictionary *)serialize:(DbxTeamRevokeLinkedAppStatus *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"success"] = valueObj.success;
    if (valueObj.errorType) {
        jsonDict[@"error_type"] = [DbxTeamRevokeLinkedAppErrorSerializer serialize:valueObj.errorType];
    }

    return jsonDict;
}

+ (DbxTeamRevokeLinkedAppStatus *)deserialize:(NSDictionary *)valueDict {
    NSNumber *success = valueDict[@"success"];
    DbxTeamRevokeLinkedAppError *errorType = valueDict[@"error_type"] ? [DbxTeamRevokeLinkedAppErrorSerializer deserialize:valueDict[@"error_type"]] : nil;

    return [[DbxTeamRevokeLinkedAppStatus alloc] initWithSuccess:success errorType:errorType];
}

@end
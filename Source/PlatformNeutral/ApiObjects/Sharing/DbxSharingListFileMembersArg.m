///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingListFileMembersArg.h"
#import "DbxSharingMemberAction.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingListFileMembersArg 

- (instancetype)initWithFile:(NSString *)file actions:(NSArray<DbxSharingMemberAction *> *)actions includeInherited:(NSNumber *)includeInherited limit:(NSNumber *)limit {
    [DbxStoneValidators stringValidator:[NSNumber numberWithInt:1] maxLength:nil pattern:@"((/|id:).*|nspath:[^:]*:[^:]*)"](file);
    [DbxStoneValidators nullableValidator:[DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil]](actions);
    [DbxStoneValidators numericValidator:[NSNumber numberWithInt:1] maxValue:[NSNumber numberWithInt:300]](limit ?: [NSNumber numberWithUnsignedInt:100]);

    self = [super init];
    if (self != nil) {
        _file = file;
        _actions = actions;
        _includeInherited = includeInherited ?: @YES;
        _limit = limit ?: [NSNumber numberWithUnsignedInt:100];
    }
    return self;
}

- (instancetype)initWithFile:(NSString *)file {
    return [self initWithFile:file actions:nil includeInherited:nil limit:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingListFileMembersArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingListFileMembersArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingListFileMembersArgSerializer serialize:self] description];
}

@end


@implementation DbxSharingListFileMembersArgSerializer 

+ (NSDictionary *)serialize:(DbxSharingListFileMembersArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"file"] = valueObj.file;
    if (valueObj.actions) {
        jsonDict[@"actions"] = [DbxArraySerializer serialize:valueObj.actions withBlock:^id(id elem) { return [DbxSharingMemberActionSerializer serialize:elem]; }];
    }
    jsonDict[@"include_inherited"] = valueObj.includeInherited;
    jsonDict[@"limit"] = valueObj.limit;

    return jsonDict;
}

+ (DbxSharingListFileMembersArg *)deserialize:(NSDictionary *)valueDict {
    NSString *file = valueDict[@"file"];
    NSArray<DbxSharingMemberAction *> *actions = valueDict[@"actions"] ? [DbxArraySerializer deserialize:valueDict[@"actions"] withBlock:^id(id elem) { return [DbxSharingMemberActionSerializer deserialize:elem]; }] : nil;
    NSNumber *includeInherited = valueDict[@"include_inherited"];
    NSNumber *limit = valueDict[@"limit"];

    return [[DbxSharingListFileMembersArg alloc] initWithFile:file actions:actions includeInherited:includeInherited limit:limit];
}

@end
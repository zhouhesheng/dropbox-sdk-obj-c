///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingSharedFolderAccessError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingSharedFolderAccessError 

- (instancetype)initWithInvalidId {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharedFolderAccessErrorTag)SharingSharedFolderAccessErrorInvalidId;
    }
    return self;
}

- (instancetype)initWithNotAMember {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharedFolderAccessErrorTag)SharingSharedFolderAccessErrorNotAMember;
    }
    return self;
}

- (instancetype)initWithEmailUnverified {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharedFolderAccessErrorTag)SharingSharedFolderAccessErrorEmailUnverified;
    }
    return self;
}

- (instancetype)initWithUnmounted {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharedFolderAccessErrorTag)SharingSharedFolderAccessErrorUnmounted;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharedFolderAccessErrorTag)SharingSharedFolderAccessErrorOther;
    }
    return self;
}

- (BOOL)isInvalidId {
    return _tag == (SharingSharedFolderAccessErrorTag)SharingSharedFolderAccessErrorInvalidId;
}

- (BOOL)isNotAMember {
    return _tag == (SharingSharedFolderAccessErrorTag)SharingSharedFolderAccessErrorNotAMember;
}

- (BOOL)isEmailUnverified {
    return _tag == (SharingSharedFolderAccessErrorTag)SharingSharedFolderAccessErrorEmailUnverified;
}

- (BOOL)isUnmounted {
    return _tag == (SharingSharedFolderAccessErrorTag)SharingSharedFolderAccessErrorUnmounted;
}

- (BOOL)isOther {
    return _tag == (SharingSharedFolderAccessErrorTag)SharingSharedFolderAccessErrorOther;
}

- (NSString *)getTagName {
    if (_tag == (SharingSharedFolderAccessErrorTag)SharingSharedFolderAccessErrorInvalidId) {
        return @"(SharingSharedFolderAccessErrorTag)SharingSharedFolderAccessErrorInvalidId";
    }
    if (_tag == (SharingSharedFolderAccessErrorTag)SharingSharedFolderAccessErrorNotAMember) {
        return @"(SharingSharedFolderAccessErrorTag)SharingSharedFolderAccessErrorNotAMember";
    }
    if (_tag == (SharingSharedFolderAccessErrorTag)SharingSharedFolderAccessErrorEmailUnverified) {
        return @"(SharingSharedFolderAccessErrorTag)SharingSharedFolderAccessErrorEmailUnverified";
    }
    if (_tag == (SharingSharedFolderAccessErrorTag)SharingSharedFolderAccessErrorUnmounted) {
        return @"(SharingSharedFolderAccessErrorTag)SharingSharedFolderAccessErrorUnmounted";
    }
    if (_tag == (SharingSharedFolderAccessErrorTag)SharingSharedFolderAccessErrorOther) {
        return @"(SharingSharedFolderAccessErrorTag)SharingSharedFolderAccessErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingSharedFolderAccessErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingSharedFolderAccessErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingSharedFolderAccessErrorSerializer serialize:self] description];
}

@end


@implementation DbxSharingSharedFolderAccessErrorSerializer 

+ (NSDictionary *)serialize:(DbxSharingSharedFolderAccessError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isInvalidId]) {
        jsonDict[@".tag"] = @"invalid_id";
    }
    else if ([valueObj isNotAMember]) {
        jsonDict[@".tag"] = @"not_a_member";
    }
    else if ([valueObj isEmailUnverified]) {
        jsonDict[@".tag"] = @"email_unverified";
    }
    else if ([valueObj isUnmounted]) {
        jsonDict[@".tag"] = @"unmounted";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingSharedFolderAccessError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"invalid_id"]) {
        return [[DbxSharingSharedFolderAccessError alloc] initWithInvalidId];
    }
    if ([tag isEqualToString:@"not_a_member"]) {
        return [[DbxSharingSharedFolderAccessError alloc] initWithNotAMember];
    }
    if ([tag isEqualToString:@"email_unverified"]) {
        return [[DbxSharingSharedFolderAccessError alloc] initWithEmailUnverified];
    }
    if ([tag isEqualToString:@"unmounted"]) {
        return [[DbxSharingSharedFolderAccessError alloc] initWithUnmounted];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingSharedFolderAccessError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingMountFolderArg.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingMountFolderArg 

- (instancetype)initWithSharedFolderId:(NSString *)sharedFolderId {
    [DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"[-_0-9a-zA-Z:]+"](sharedFolderId);

    self = [super init];
    if (self != nil) {
        _sharedFolderId = sharedFolderId;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingMountFolderArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingMountFolderArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingMountFolderArgSerializer serialize:self] description];
}

@end


@implementation DbxSharingMountFolderArgSerializer 

+ (NSDictionary *)serialize:(DbxSharingMountFolderArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"shared_folder_id"] = valueObj.sharedFolderId;

    return jsonDict;
}

+ (DbxSharingMountFolderArg *)deserialize:(NSDictionary *)valueDict {
    NSString *sharedFolderId = valueDict[@"shared_folder_id"];

    return [[DbxSharingMountFolderArg alloc] initWithSharedFolderId:sharedFolderId];
}

@end
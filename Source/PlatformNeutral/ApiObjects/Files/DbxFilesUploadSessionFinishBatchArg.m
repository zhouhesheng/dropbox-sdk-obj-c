///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesUploadSessionFinishArg.h"
#import "DbxFilesUploadSessionFinishBatchArg.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesUploadSessionFinishBatchArg 

- (instancetype)initWithEntries:(NSArray<DbxFilesUploadSessionFinishArg *> *)entries {
    [DbxStoneValidators arrayValidator:nil maxItems:[NSNumber numberWithInt:1000] itemValidator:nil](entries);

    self = [super init];
    if (self != nil) {
        _entries = entries;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesUploadSessionFinishBatchArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesUploadSessionFinishBatchArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesUploadSessionFinishBatchArgSerializer serialize:self] description];
}

@end


@implementation DbxFilesUploadSessionFinishBatchArgSerializer 

+ (NSDictionary *)serialize:(DbxFilesUploadSessionFinishBatchArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"entries"] = [DbxArraySerializer serialize:valueObj.entries withBlock:^id(id elem) { return [DbxFilesUploadSessionFinishArgSerializer serialize:elem]; }];

    return jsonDict;
}

+ (DbxFilesUploadSessionFinishBatchArg *)deserialize:(NSDictionary *)valueDict {
    NSArray<DbxFilesUploadSessionFinishArg *> *entries = [DbxArraySerializer deserialize:valueDict[@"entries"] withBlock:^id(id elem) { return [DbxFilesUploadSessionFinishArgSerializer deserialize:elem]; }];

    return [[DbxFilesUploadSessionFinishBatchArg alloc] initWithEntries:entries];
}

@end
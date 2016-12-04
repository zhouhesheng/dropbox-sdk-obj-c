///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGFileAction.h"
#import "DBSHARINGGetFileMetadataArg.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGGetFileMetadataArg

#pragma mark - Constructors

- (instancetype)initWithFile:(NSString *)file actions:(NSArray<DBSHARINGFileAction *> *)actions {
  [DBStoneValidators stringValidator:@(1) maxLength:nil pattern:@"((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?"](file);
  [DBStoneValidators nullableValidator:[DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil]](actions);

  self = [super init];
  if (self) {
    _file = file;
    _actions = actions;
  }
  return self;
}

- (instancetype)initWithFile:(NSString *)file {
  return [self initWithFile:file actions:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGGetFileMetadataArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGGetFileMetadataArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGGetFileMetadataArgSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGGetFileMetadataArgSerializer

+ (NSDictionary *)serialize:(DBSHARINGGetFileMetadataArg *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"file"] = valueObj.file;
  if (valueObj.actions) {
    jsonDict[@"actions"] = [DBArraySerializer serialize:valueObj.actions
                                              withBlock:^id(id elem) {
                                                return [DBSHARINGFileActionSerializer serialize:elem];
                                              }];
  }

  return jsonDict;
}

+ (DBSHARINGGetFileMetadataArg *)deserialize:(NSDictionary *)valueDict {
  NSString *file = valueDict[@"file"];
  NSArray<DBSHARINGFileAction *> *actions =
      valueDict[@"actions"] ? [DBArraySerializer deserialize:valueDict[@"actions"]
                                                   withBlock:^id(id elem) {
                                                     return [DBSHARINGFileActionSerializer deserialize:elem];
                                                   }]
                            : nil;

  return [[DBSHARINGGetFileMetadataArg alloc] initWithFile:file actions:actions];
}

@end
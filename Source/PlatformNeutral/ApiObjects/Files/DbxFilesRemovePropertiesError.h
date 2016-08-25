///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"
#import "DbxFilesPropertiesError.h"

@class DbxFilesLookUpPropertiesError;
@class DbxFilesLookupError;
@class DbxFilesRemovePropertiesError;

/// 
/// The DbxFilesRemovePropertiesError union.
/// 
@interface DbxFilesRemovePropertiesError : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, FilesRemovePropertiesErrorTag) {
    /// Property template does not exist for given identifier.
    FilesRemovePropertiesErrorTemplateNotFound,
    /// You do not have the permissions to modify this property template.
    FilesRemovePropertiesErrorRestrictedContent,
    /// (no description)
    FilesRemovePropertiesErrorOther,
    /// (no description)
    FilesRemovePropertiesErrorPath,
    /// (no description)
    FilesRemovePropertiesErrorPropertyGroupLookup,
};

- (nonnull instancetype)initWithTemplateNotFound:(NSString * _Nonnull)templateNotFound;

- (nonnull instancetype)initWithRestrictedContent;

- (nonnull instancetype)initWithOther;

- (nonnull instancetype)initWithPath:(DbxFilesLookupError * _Nonnull)path;

- (nonnull instancetype)initWithPropertyGroupLookup:(DbxFilesLookUpPropertiesError * _Nonnull)propertyGroupLookup;

- (BOOL)isTemplateNotFound;

- (BOOL)isRestrictedContent;

- (BOOL)isOther;

- (BOOL)isPath;

- (BOOL)isPropertyGroupLookup;

- (NSString * _Nonnull)getTagName;

- (NSString * _Nonnull)description;

/// Current state of the DbxFilesRemovePropertiesError union type.
@property (nonatomic) FilesRemovePropertiesErrorTag tag;
@property (nonatomic, copy) NSString * _Nonnull templateNotFound;
@property (nonatomic) DbxFilesLookupError * _Nonnull path;
@property (nonatomic) DbxFilesLookUpPropertiesError * _Nonnull propertyGroupLookup;

@end


@interface DbxFilesRemovePropertiesErrorSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxFilesRemovePropertiesError * _Nonnull)obj;

+ (DbxFilesRemovePropertiesError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
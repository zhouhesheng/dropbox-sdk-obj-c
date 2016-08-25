///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"
#import "DbxSharingSharedLinkMetadata.h"

@class DbxSharingFileLinkMetadata;
@class DbxSharingLinkPermissions;
@class DbxSharingTeamMemberInfo;
@class DbxUsersTeam;

/// 
/// The DbxSharingFileLinkMetadata struct.
/// 
/// The metadata of a file shared link
/// 
@interface DbxSharingFileLinkMetadata : DbxSharingSharedLinkMetadata <DbxSerializable> 

/// The modification time set by the desktop client when the file was added to
/// Dropbox. Since this time is not verified (the Dropbox server stores whatever
/// the desktop client sends up), this should only be used for display purposes
/// (such as sorting) and not, for example, to determine if a file has changed
/// or not.
@property (nonatomic) NSDate * _Nonnull clientModified;
/// The last time the file was modified on Dropbox.
@property (nonatomic) NSDate * _Nonnull serverModified;
/// A unique identifier for the current revision of a file. This field is the
/// same rev as elsewhere in the API and can be used to detect changes and avoid
/// conflicts.
@property (nonatomic, copy) NSString * _Nonnull rev;
/// The file size in bytes.
@property (nonatomic, copy) NSNumber * _Nonnull size;

- (nonnull instancetype)initWithUrl:(NSString * _Nonnull)url name:(NSString * _Nonnull)name linkPermissions:(DbxSharingLinkPermissions * _Nonnull)linkPermissions clientModified:(NSDate * _Nonnull)clientModified serverModified:(NSDate * _Nonnull)serverModified rev:(NSString * _Nonnull)rev size:(NSNumber * _Nonnull)size id_:(NSString * _Nullable)id_ expires:(NSDate * _Nullable)expires pathLower:(NSString * _Nullable)pathLower teamMemberInfo:(DbxSharingTeamMemberInfo * _Nullable)teamMemberInfo contentOwnerTeamInfo:(DbxUsersTeam * _Nullable)contentOwnerTeamInfo;

- (nonnull instancetype)initWithUrl:(NSString * _Nonnull)url name:(NSString * _Nonnull)name linkPermissions:(DbxSharingLinkPermissions * _Nonnull)linkPermissions clientModified:(NSDate * _Nonnull)clientModified serverModified:(NSDate * _Nonnull)serverModified rev:(NSString * _Nonnull)rev size:(NSNumber * _Nonnull)size;

- (NSString * _Nonnull)description;

@end


@interface DbxSharingFileLinkMetadataSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingFileLinkMetadata * _Nonnull)obj;

+ (DbxSharingFileLinkMetadata * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
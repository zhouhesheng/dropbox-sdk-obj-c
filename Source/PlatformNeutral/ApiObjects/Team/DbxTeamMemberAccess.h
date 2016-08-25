///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxTeamGroupAccessType;
@class DbxTeamMemberAccess;
@class DbxTeamUserSelectorArg;

/// 
/// The DbxTeamMemberAccess struct.
/// 
/// Specify access type a member should have when joined to a group.
/// 
@interface DbxTeamMemberAccess : NSObject <DbxSerializable> 

/// Identity of a user.
@property (nonatomic) DbxTeamUserSelectorArg * _Nonnull user;
/// Access type.
@property (nonatomic) DbxTeamGroupAccessType * _Nonnull accessType;

- (nonnull instancetype)initWithUser:(DbxTeamUserSelectorArg * _Nonnull)user accessType:(DbxTeamGroupAccessType * _Nonnull)accessType;

- (NSString * _Nonnull)description;

@end


@interface DbxTeamMemberAccessSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamMemberAccess * _Nonnull)obj;

+ (DbxTeamMemberAccess * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
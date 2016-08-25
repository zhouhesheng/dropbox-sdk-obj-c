///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"
#import "DbxTeamMembersDeactivateError.h"

@class DbxTeamMembersRemoveError;

/// 
/// The DbxTeamMembersRemoveError union.
/// 
@interface DbxTeamMembersRemoveError : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, TeamMembersRemoveErrorTag) {
    /// No matching user found. The provided team_member_id, email, or
    /// external_id does not exist on this team.
    TeamMembersRemoveErrorUserNotFound,
    /// The user is not a member of the team.
    TeamMembersRemoveErrorUserNotInTeam,
    /// (no description)
    TeamMembersRemoveErrorOther,
    /// The user is the last admin of the team, so it cannot be removed from it.
    TeamMembersRemoveErrorRemoveLastAdmin,
    /// Expected removed user and transfer_dest user to be different
    TeamMembersRemoveErrorRemovedAndTransferDestShouldDiffer,
    /// Expected removed user and transfer_admin user to be different.
    TeamMembersRemoveErrorRemovedAndTransferAdminShouldDiffer,
    /// No matching user found for the argument transfer_dest_id.
    TeamMembersRemoveErrorTransferDestUserNotFound,
    /// The provided transfer_dest_id does not exist on this team.
    TeamMembersRemoveErrorTransferDestUserNotInTeam,
    /// No matching user found for the argument transfer_admin_id.
    TeamMembersRemoveErrorTransferAdminUserNotFound,
    /// The provided transfer_admin_id does not exist on this team.
    TeamMembersRemoveErrorTransferAdminUserNotInTeam,
    /// The transfer_admin_id argument must be provided when file transfer is
    /// requested.
    TeamMembersRemoveErrorUnspecifiedTransferAdminId,
    /// Specified transfer_admin user is not a team admin.
    TeamMembersRemoveErrorTransferAdminIsNotAdmin,
    /// Cannot keep account and transfer the data to another user at the same
    /// time.
    TeamMembersRemoveErrorCannotKeepAccountAndTransfer,
    /// Cannot keep account and delete the data at the same time.
    TeamMembersRemoveErrorCannotKeepAccountAndDeleteData,
    /// The email address of the user is too long to be disabled.
    TeamMembersRemoveErrorEmailAddressTooLongToBeDisabled,
};

- (nonnull instancetype)initWithUserNotFound;

- (nonnull instancetype)initWithUserNotInTeam;

- (nonnull instancetype)initWithOther;

- (nonnull instancetype)initWithRemoveLastAdmin;

- (nonnull instancetype)initWithRemovedAndTransferDestShouldDiffer;

- (nonnull instancetype)initWithRemovedAndTransferAdminShouldDiffer;

- (nonnull instancetype)initWithTransferDestUserNotFound;

- (nonnull instancetype)initWithTransferDestUserNotInTeam;

- (nonnull instancetype)initWithTransferAdminUserNotFound;

- (nonnull instancetype)initWithTransferAdminUserNotInTeam;

- (nonnull instancetype)initWithUnspecifiedTransferAdminId;

- (nonnull instancetype)initWithTransferAdminIsNotAdmin;

- (nonnull instancetype)initWithCannotKeepAccountAndTransfer;

- (nonnull instancetype)initWithCannotKeepAccountAndDeleteData;

- (nonnull instancetype)initWithEmailAddressTooLongToBeDisabled;

- (BOOL)isUserNotFound;

- (BOOL)isUserNotInTeam;

- (BOOL)isOther;

- (BOOL)isRemoveLastAdmin;

- (BOOL)isRemovedAndTransferDestShouldDiffer;

- (BOOL)isRemovedAndTransferAdminShouldDiffer;

- (BOOL)isTransferDestUserNotFound;

- (BOOL)isTransferDestUserNotInTeam;

- (BOOL)isTransferAdminUserNotFound;

- (BOOL)isTransferAdminUserNotInTeam;

- (BOOL)isUnspecifiedTransferAdminId;

- (BOOL)isTransferAdminIsNotAdmin;

- (BOOL)isCannotKeepAccountAndTransfer;

- (BOOL)isCannotKeepAccountAndDeleteData;

- (BOOL)isEmailAddressTooLongToBeDisabled;

- (NSString * _Nonnull)getTagName;

- (NSString * _Nonnull)description;

/// Current state of the DbxTeamMembersRemoveError union type.
@property (nonatomic) TeamMembersRemoveErrorTag tag;

@end


@interface DbxTeamMembersRemoveErrorSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamMembersRemoveError * _Nonnull)obj;

+ (DbxTeamMembersRemoveError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
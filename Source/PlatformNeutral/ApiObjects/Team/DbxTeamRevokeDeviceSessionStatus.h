///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxTeamRevokeDeviceSessionError;
@class DbxTeamRevokeDeviceSessionStatus;

/// 
/// The DbxTeamRevokeDeviceSessionStatus struct.
/// 
@interface DbxTeamRevokeDeviceSessionStatus : NSObject <DbxSerializable> 

/// Result of the revoking request
@property (nonatomic, copy) NSNumber * _Nonnull success;
/// The error cause in case of a failure
@property (nonatomic) DbxTeamRevokeDeviceSessionError * _Nullable errorType;

- (nonnull instancetype)initWithSuccess:(NSNumber * _Nonnull)success errorType:(DbxTeamRevokeDeviceSessionError * _Nullable)errorType;

- (nonnull instancetype)initWithSuccess:(NSNumber * _Nonnull)success;

- (NSString * _Nonnull)description;

@end


@interface DbxTeamRevokeDeviceSessionStatusSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamRevokeDeviceSessionStatus * _Nonnull)obj;

+ (DbxTeamRevokeDeviceSessionStatus * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
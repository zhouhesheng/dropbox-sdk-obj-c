///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxUsersTeamSpaceAllocation;

/// 
/// The DbxUsersTeamSpaceAllocation struct.
/// 
@interface DbxUsersTeamSpaceAllocation : NSObject <DbxSerializable> 

/// The total space currently used by the user's team (bytes).
@property (nonatomic, copy) NSNumber * _Nonnull used;
/// The total space allocated to the user's team (bytes).
@property (nonatomic, copy) NSNumber * _Nonnull allocated;

- (nonnull instancetype)initWithUsed:(NSNumber * _Nonnull)used allocated:(NSNumber * _Nonnull)allocated;

- (NSString * _Nonnull)description;

@end


@interface DbxUsersTeamSpaceAllocationSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxUsersTeamSpaceAllocation * _Nonnull)obj;

+ (DbxUsersTeamSpaceAllocation * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
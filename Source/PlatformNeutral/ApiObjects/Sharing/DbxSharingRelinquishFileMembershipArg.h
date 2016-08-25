///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingRelinquishFileMembershipArg;

/// 
/// The DbxSharingRelinquishFileMembershipArg struct.
/// 
@interface DbxSharingRelinquishFileMembershipArg : NSObject <DbxSerializable> 

/// The path or id for the file.
@property (nonatomic, copy) NSString * _Nonnull file;

- (nonnull instancetype)initWithFile:(NSString * _Nonnull)file;

- (NSString * _Nonnull)description;

@end


@interface DbxSharingRelinquishFileMembershipArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingRelinquishFileMembershipArg * _Nonnull)obj;

+ (DbxSharingRelinquishFileMembershipArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
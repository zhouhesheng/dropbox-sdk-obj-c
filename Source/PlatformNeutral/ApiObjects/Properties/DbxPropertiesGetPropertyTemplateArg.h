///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxPropertiesGetPropertyTemplateArg;

/// 
/// The DbxPropertiesGetPropertyTemplateArg struct.
/// 
@interface DbxPropertiesGetPropertyTemplateArg : NSObject <DbxSerializable> 

/// An identifier for property template added by route properties/template/add.
@property (nonatomic, copy) NSString * _Nonnull templateId;

- (nonnull instancetype)initWithTemplateId:(NSString * _Nonnull)templateId;

- (NSString * _Nonnull)description;

@end


@interface DbxPropertiesGetPropertyTemplateArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxPropertiesGetPropertyTemplateArg * _Nonnull)obj;

+ (DbxPropertiesGetPropertyTemplateArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
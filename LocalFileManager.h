
#import <Foundation/Foundation.h>

@interface LocalFileManager : NSObject

+(LocalFileManager *)manager;
-(NSString*)documentPath;
@end

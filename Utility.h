#import <Foundation/Foundation.h>

@interface Utility : NSObject
+ (NSDateComponents*)dateComponentsWithDate:(NSDate*)date;
+ (NSString*)today;
+ (NSString*)tomorrow;
@end

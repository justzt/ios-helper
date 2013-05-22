#import <Foundation/Foundation.h>

@interface UserDefaultsManager : NSObject

- (BOOL)firstUseThisApp;
- (double)previosUpdateTime;
- (void)saveUpdateTime;
@end


#import "UserDefaultsManager.h"

#define kFirstUseThisApp @"kFirstUseThisApp"
#define kPreviousUpdateTime @"kPreviousUpdateTime"

@implementation UserDefaultsManager



static UserDefaultsManager *manager = nil;


+(UserDefaultsManager *)manager{
    @synchronized (self){  //为了确保多线程情况下，仍然确保实体的唯一性
        if (!manager) {
            [[self alloc] init]; //该方法会调用 allocWithZone
        }
    }
    return manager;
}


+(id)allocWithZone:(NSZone *)zone{
    @synchronized (self){
        if (!manager) {
            manager = [super allocWithZone:zone]; //确保使用同一块内存地址
            return manager;
        }
    }
    return nil;
}


- (id)copyWithZone:(NSZone *)zone;{
    return self; //确保copy对象也是唯一
}


-(id)retain{
    return self; //确保计数唯一
}


- (unsigned int)retainCount
{
    return UINT_MAX;  
}


- (id)autorelease
{
    return self;//确保计数唯一
}


// ====== ====== ====== ====== ====== ====== ====== ====== ======
- (NSUserDefaults*)ud{
    return [NSUserDefaults standardUserDefaults];
}

- (BOOL)firstUseThisApp{
    if([[self ud] objectForKey:kFirstUseThisApp]){
        return NO;
    }
    [[self ud] setObject:@"used" forKey:kFirstUseThisApp];
    return YES;
}

- (double)previosUpdateTime{
   return  [[self ud] doubleForKey:kPreviousUpdateTime];
}

- (void)saveUpdateTime{
    double time = [[NSDate date] timeIntervalSince1970];
    [[self ud] setDouble:time forKey:kPreviousUpdateTime];
    [[self ud] synchronize];
}

@end

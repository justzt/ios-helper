#import "LocalFileManager.h"

@implementation LocalFileManager

static LocalFileManager *manager = nil;


+(LocalFileManager *)manager{
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



- (id)autorelease
{
    return self;//确保计数唯一
}

//====================================================================================

-(NSString*)documentPath{
    NSString *documentdir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    return documentdir;
    //    NSString *tileDirectory = [documentdir stringByAppendingPathComponent:@"xxxx/Tiles"];
}


@end

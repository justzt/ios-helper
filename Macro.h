//
//  Macro.h
//  PhotoWorld
//
//  Created by Yang on 10/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//
#define StrFromFloat(F)     [NSString stringWithFormat: @"%f", F]
#define StrFromInt(I)       [NSString stringWithFormat: @"%d", I]

#define NumFromBOOL(B)      [NSNumber numberWithBool: B]
#define NumFromInt(I)       [NSNumber numberWithBool: I]
#define NumFromDouble(D)    [NSNumber numberWithDouble: D]

#define FormatStr(fmt, ...) [NSString stringWithFormat:fmt, ##__VA_ARGS__]




#define DLog(A) NSLog((@"%@(%d): %@"),[[NSString stringWithFormat:@"%s", __FILE__] lastPathComponent], __LINE__, A)
#define DLogF(fmt, ...)  NSLog((@"%@(%d): " fmt),[[NSString stringWithFormat:@"%s", __FILE__] lastPathComponent], __LINE__, ##__VA_ARGS__)

#define FirstObjectOfArray(A) ([A count]>0)?[A objectAtIndex: 0]:nil


//debug stuff
#define ShowCurrentPosition NSLog(@"\n Function: %s\n Pretty function: %s\n Line: %d\n File: %s\n Object: %@",__func__, __PRETTY_FUNCTION__, __LINE__, __FILE__, button)

#define ShowCurrentLocation NSLog(@"Current selector: %@, Object class: %@, Filename: %@", NSStringFromSelector(_cmd), NSStringFromClass([self class]), [[NSString stringWithUTF8String:__FILE__] lastPathComponent])

#define ShowStackSymbols NSLog(@"Stack trace: %@", [NSThread callStackSymbols])

//dictionatry 取值NULL处理, 为空的话用给定的defultValue作为默认值
#define DicValueForKey(dic,defultValue,key) [[dic objectForKey:key] class] ==  [NSNull class] ? defultValue : [dic objectForKey:key]

//设备类型
#define iphone5 [[UIScreen mainScreen] bounds].size.height > 480 ? YES : NO
//屏幕高度
#define Screen_height [[UIScreen mainScreen] bounds].size.height
//
#define RootNav  (UINavigationController*)[UIApplication sharedApplication].keyWindow.rootViewController
#define PoptoRootVCWithAnimated(value) [RootNav popToRootViewControllerAnimated:value]


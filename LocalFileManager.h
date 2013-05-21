//
//  LocalFileManager.h
//  HZWeather-mac
//
//  Created by justzt on 5/20/13.
//  Copyright (c) 2013 justzt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LocalFileManager : NSObject

+(LocalFileManager *)manager;
-(NSString*)documentPath;
@end

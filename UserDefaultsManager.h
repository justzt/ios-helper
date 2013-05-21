//
//  UserDefaultsManager.h
//  HZWeather-mac
//
//  Created by justzt on 5/20/13.
//  Copyright (c) 2013 justzt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserDefaultsManager : NSObject

- (BOOL)firstUseThisApp;
- (double)previosUpdateTime;
- (void)saveUpdateTime;
@end

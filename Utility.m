//
//  Uitility.m
//  HZWeather-mac
//
//  Created by justzt on 5/20/13.
//  Copyright (c) 2013 justzt. All rights reserved.
//

#import "Utility.h"

@implementation Utility

+ (NSDateComponents*)dateComponentsWithDate:(NSDate*)date{
    NSDate *currentDate = date == nil ?  [NSDate date] : date;
    NSCalendar* calendar = [NSCalendar currentCalendar];
    NSDateComponents* components = [calendar components:NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit fromDate:currentDate]; // Get necessary date components
    return components;
}



+ (NSString*)today{
    NSDateComponents *components = [self dateComponentsWithDate:[NSDate date]];
    return [NSString stringWithFormat:@"today=%ld",(long)[components day]];
}


+ (NSString*)tomorrow{
    int tomorrowTime = [[NSDate date] timeIntervalSince1970]+60*60*24;
    NSDate *tomorrowDate = [NSDate dateWithTimeIntervalSince1970:tomorrowTime];
    NSDateComponents *components = [self dateComponentsWithDate:tomorrowDate];
    return [NSString stringWithFormat:@"today=%ld",(long)[components day]];
}
@end

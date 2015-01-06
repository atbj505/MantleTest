//
//  TestModel.m
//  MantleTest
//
//  Created by 杨启晖 on 15/1/6.
//  Copyright (c) 2015年 telcolor. All rights reserved.
//

#import "TestModel.h"

@implementation TestModel
+ (NSDictionary *)JSONKeyPathsByPropertyKey;{
    return @{
             @"date": @"dt", //将JSON字典里dt键对应的值，赋值给date属性
             @"locationName": @"name",
             @"humidity": @"main.humidity",
             @"temperature": @"main.temp",//这个点是什么意思呢，表示将main键对应的子字典里，
             //temp键对应的值赋给temperature属性。
             //我们不用再写 objectForKey]objectForKey]..这种代码了。
             //注意了：当main键对应的是数组时，main.temp返回的
             //为所有temp键对应值的数组合集
             
             @"tempHigh": @"main.temp_max",
             @"tempLow": @"main.temp_min",
             @"sunrise": @"sys.sunrise",
             @"sunset": @"sys.sunset",
             @"conditionDescription": @"weather.description",
             @"condition": @"weather.main",
             @"windBearing": @"wind.deg",
             @"windSpeed": @"wind.speed",
             };
}
+ (NSValueTransformer *)dateJSONTransformer {
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^(NSNumber *dateNum) {
        return [NSDate dateWithTimeIntervalSince1970:dateNum.floatValue];
    } reverseBlock:^(NSDate *date) {
        return [NSString stringWithFormat:@"%f",[date timeIntervalSince1970]];
    }];
}
@end

//
//  TestModel.h
//  MantleTest
//
//  Created by 杨启晖 on 15/1/6.
//  Copyright (c) 2015年 telcolor. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle/Mantle.h"

@interface TestModel : MTLModel<MTLJSONSerializing>
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) NSNumber *humidity;
@property (nonatomic, strong) NSNumber *temperature;
@property (nonatomic, strong) NSNumber *tempHigh;
@property (nonatomic, strong) NSNumber *tempLow;
@property (nonatomic, strong) NSString *locationName;
@property (nonatomic, strong) NSDate *sunrise;
@property (nonatomic, strong) NSDate *sunset;
@property (nonatomic, strong) NSString *conditionDescription;
@property (nonatomic, strong) NSString *condition;
@property (nonatomic, strong) NSNumber *windBearing;
@property (nonatomic, strong) NSNumber *windSpeed;
@end

//
//  CICThemeModel.m
//  zhihudailyAPI
//
//  Created by im61 on 14-9-7.
//  Copyright (c) 2014年 6133studio.com. All rights reserved.
//

#import "CICThemeModel.h"

@implementation CICThemeModel

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    if (self) {
        _themeID = dict[@"id"];
        _color = dict[@"color"];
        _desc = dict[@"description"];
        _name = dict[@"name"];
    }
    
    return self;
}

@end

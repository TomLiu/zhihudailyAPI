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
        self.themeID = dict[@"id"];
        self.color = dict[@"color"];
        self.desc = dict[@"description"];
        self.name = dict[@"name"];
    }
    
    return self;
}

@end

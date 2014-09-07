//
//  CICPostModel.m
//  Cicada
//
//  Created by 61 on 14-5-15.
//  Copyright (c) 2014年 6133studio.com. All rights reserved.
//

#import "CICPostModel.h"

@implementation CICPostModel

- (id)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    if (self) {
        _title = dict[@"title"];
        _images = dict[@"images"];
        _shareURL = dict[@"share_url"];
        _gaPrefix = dict[@"ga_prefix"];
        _postID = dict[@"id"];
        _date = dict[@"date"];
        _type = [dict[@"type"] integerValue];
    }
    
    return self;
}

@end

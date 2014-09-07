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
        self.title = dict[@"title"];
        self.images = dict[@"images"];
        self.shareURL = dict[@"share_url"];
        self.gaPrefix = dict[@"ga_prefix"];
        self.postID = dict[@"id"];
        self.date = dict[@"date"];
        self.type = [dict[@"type"] integerValue];
    }
    
    return self;
}

@end

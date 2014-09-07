//
//  CICPostContentModel.m
//  Cicada
//
//  Created by 61 on 14-5-17.
//  Copyright (c) 2014年 6133studio.com. All rights reserved.
//

#import "CICPostContentModel.h"

@implementation CICPostContentModel
- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    if (self) {
        self.body = dict[@"body"];
        self.css = dict[@"css"];
        self.js = dict[@"js"];
        self.title = dict[@"title"];
        self.image = dict[@"image"];
        self.gaPrefix = dict[@"ga_prefix"];
        self.postID = dict[@"id"];
        self.type = [dict[@"type"] integerValue];
        self.shareURL = dict[@"share_url"];
        self.imageSource = dict[@"image_source"];
    }
    
    return self;
}
@end

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
        _body = dict[@"body"];
        _css = dict[@"css"];
        _js = dict[@"js"];
        _title = dict[@"title"];
        _image = dict[@"image"];
        _gaPrefix = dict[@"ga_prefix"];
        _postID = dict[@"id"];
        _type = [dict[@"type"] integerValue];
        _shareURL = dict[@"share_url"];
        _imageSource = dict[@"image_source"];
    }
    
    return self;
}
@end

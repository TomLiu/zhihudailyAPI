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
        self.URL = dict[@"url"];
        self.imageURL = dict[@"image"];
        self.shareURL = dict[@"share_url"];
        self.thumbnailURL = dict[@"thumbnail"];
        self.gaPrefix = dict[@"ga_prefix"];
        self.postID = dict[@"id"];
        self.date = dict[@"date"];
        self.displayDate = dict[@"display_date"];
    }
    
    return self;
}

@end

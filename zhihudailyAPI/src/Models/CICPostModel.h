//
//  CICPostModel.h
//  Cicada
//
//  Created by 61 on 14-5-15.
//  Copyright (c) 2014年 6133studio.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CICPostModel : NSObject

@property (strong, nonatomic) NSString *date;
@property (strong, nonatomic) NSString *displayDate;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *URL;
@property (strong, nonatomic) NSString *imageURL;
@property (strong, nonatomic) NSString *shareURL;
@property (strong, nonatomic) NSString *thumbnailURL;
@property (strong, nonatomic) NSString *gaPrefix;
@property (strong, nonatomic) NSNumber *postID;

- (id)initWithDictionary:(NSDictionary *)dict;
@end

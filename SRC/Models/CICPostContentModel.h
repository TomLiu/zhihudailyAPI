//
//  CICPostContentModel.h
//  Cicada
//
//  Created by 61 on 14-5-17.
//  Copyright (c) 2014年 6133studio.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CICPostContentModel : NSObject

@property (nonatomic, readonly, copy) NSNumber *postID;
@property (nonatomic, readonly, copy) NSArray *css;
@property (nonatomic, readonly, copy) NSArray *js;
@property (nonatomic, readonly, copy) NSString *body;
@property (nonatomic, readonly, copy) NSString *imageSource;
@property (nonatomic, readonly, copy) NSString *title;
@property (nonatomic, readonly, copy) NSString *image;
@property (nonatomic, readonly, copy) NSString *shareURL;
@property (nonatomic, readonly, copy) NSString *gaPrefix;
@property (nonatomic, readonly, assign) NSInteger type;

- (instancetype)initWithDictionary:(NSDictionary *)dict;
@end

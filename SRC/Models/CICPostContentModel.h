//
//  CICPostContentModel.h
//  Cicada
//
//  Created by 61 on 14-5-17.
//  Copyright (c) 2014年 6133studio.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CICPostContentModel : NSObject

@property (nonatomic, strong) NSString *body;
@property (nonatomic, strong) NSArray *css;
@property (nonatomic, strong) NSArray *js;
@property (nonatomic, strong) NSString *postID;
@property (nonatomic, strong) NSString *imageSource;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *image;
@property (nonatomic, strong) NSString *shareURL;
@property (nonatomic, strong) NSString *gaPrefix;
@property (nonatomic, assign) NSInteger type;

- (instancetype)initWithDictionary:(NSDictionary *)dict;
@end

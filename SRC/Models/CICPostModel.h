//
//  CICPostModel.h
//  Cicada
//
//  Created by 61 on 14-5-15.
//  Copyright (c) 2014年 6133studio.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CICPostModel : NSObject

@property (nonatomic, readonly, copy) NSNumber *postID;
@property (nonatomic, readonly, copy) NSArray *images;
@property (nonatomic, readonly, copy) NSString *date;
@property (nonatomic, readonly, copy) NSString *title;
@property (nonatomic, readonly, copy) NSString *shareURL;
@property (nonatomic, readonly, copy) NSString *gaPrefix;
@property (nonatomic, readonly, assign) NSInteger type;

- (id)initWithDictionary:(NSDictionary *)dict;
@end

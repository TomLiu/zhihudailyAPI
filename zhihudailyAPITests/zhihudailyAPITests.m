//
//  zhihudailyAPITests.m
//  zhihudailyAPITests
//
//  Created by Tom on 14-5-19.
//  Copyright (c) 2014年 6133studio.com. All rights reserved.
//

#import "CICAPIClient.h"
#import "CICPostContentModel.h"

#import <XCTest/XCTest.h>

@interface zhihudailyAPITests : XCTestCase

@end

@implementation zhihudailyAPITests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testGetLatestPosts
{
    XCTestExpectation *getDataExpectation = [self expectationWithDescription:@"get latest posts"];
    
    [[CICAPIClient sharedClient] getLatestPostsSuccess:^(NSString *date, NSArray *posts) {
        if (date) {
            NSDate *today = [NSDate date];
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            [formatter setDateFormat:@"yyyyMMdd"];
            NSString *stringFromDate = [formatter stringFromDate:today];
            
            if ([date isEqualToString:stringFromDate]) {
                [getDataExpectation fulfill];
            }
        }
    } failure:^(NSError *error) {

    }];
    
    [self waitForExpectationsWithTimeout:1 handler:^(NSError *error) {

    }];
}

- (void)testGetPostsBefore
{
    XCTestExpectation *getDataExpectation = [self expectationWithDescription:@"get posts before today"];
    
    NSDate *today = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyyMMdd"];
    NSString *stringFromDate = [formatter stringFromDate:today];
    
    [[CICAPIClient sharedClient] getPostsBefore:stringFromDate success:^(NSString *date, NSArray *posts) {
        NSDate *today = [NSDate date];
        NSDate *yesterday = [NSDate dateWithTimeIntervalSince1970:([today timeIntervalSince1970] - 24 * 3600)];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yyyyMMdd"];
        NSString *stringFromDate = [formatter stringFromDate:yesterday];
        
        if ([date isEqualToString:stringFromDate]) {
            [getDataExpectation fulfill];
        }
    } failure:^(NSError *error) {
        
    }];
    
    [self waitForExpectationsWithTimeout:1 handler:^(NSError *error) {

    }];
}

- (void)testGetPostContent
{
    XCTestExpectation *getDataExpectation = [self expectationWithDescription:@"get post content"];
    __block NSString *postID = @"1212";
    
    [[CICAPIClient sharedClient] getPostContentByID:postID success:^(CICPostContentModel *content) {
        if ([content.postID.stringValue isEqualToString:postID]) {
            [getDataExpectation fulfill];
        }
    } failure:^(NSError *error) {
        
    }];
    
    [self waitForExpectationsWithTimeout:1 handler:^(NSError *error) {

    }];
}

- (void)testGetThemes
{
    XCTestExpectation *getDataExpectation = [self expectationWithDescription:@"get themes"];
    
    [[CICAPIClient sharedClient] getThemesSuccess:^(NSArray *themes) {
        if (themes.count > 0) {
            [getDataExpectation fulfill];
        }
    } failure:^(NSError *error) {
        
    }];
    
    [self waitForExpectationsWithTimeout:1 handler:^(NSError *error) {
        
    }];
}

- (void)testGetPostsByThemeID
{
    XCTestExpectation *getDataExpectation = [self expectationWithDescription:@"get posts by theme id"];
    
    [[CICAPIClient sharedClient] getPostsByThemeID:@"8" success:^(NSArray *posts) {
        if (posts.count > 0) {
            [getDataExpectation fulfill];
        }
    } failure:^(NSError *error) {
        
    }];
    
    [self waitForExpectationsWithTimeout:1 handler:^(NSError *error) {
        
    }];
}

- (void)testGetThemePostsBefore
{
    XCTestExpectation *getDataExpectation = [self expectationWithDescription:@"get theme posts before"];
    
    [[CICAPIClient sharedClient] getThemePosts:@"11" before:@"4155204" success:^(NSArray *posts) {
        if (posts.count > 0) {
            [getDataExpectation fulfill];
        }
    } failure:^(NSError *error) {
        
    }];
    
    [self waitForExpectationsWithTimeout:1 handler:^(NSError *error) {
        
    }];
}
@end

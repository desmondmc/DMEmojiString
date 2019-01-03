//
//  DMEmojiStringTests.m
//  DMEmojiStringTests
//
//  Created by Desmond McNamee on 02.01.19.
//  Copyright © 2019 Desmond McNamee. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <DMEmojiString/DMEmojiString.h>

@interface DMEmojiStringTests : XCTestCase

@end

@implementation DMEmojiStringTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testContainsEmojiTrue {
    XCTAssert([@"😉" containsEmoji]);
    XCTAssert([@"🥶" containsEmoji]);
    XCTAssert([@"🤟🏾" containsEmoji]);
    XCTAssert([@"🤗asdasd💋" containsEmoji]);
}

- (void)testContainsEmojiFalse {
    XCTAssert(![@"Dog" containsEmoji]);
    XCTAssert(![@"       " containsEmoji]);
    XCTAssert(![@"There a no emojis here" containsEmoji]);
    XCTAssert(![@"<<....,,,######%%%^^^^" containsEmoji]);
}

@end

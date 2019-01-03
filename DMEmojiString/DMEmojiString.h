//
//  DMEmojiString.h
//  DMEmojiString
//
//  Created by Desmond McNamee on 02.01.19.
//  Copyright © 2019 Desmond McNamee. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for DMEmojiString.
FOUNDATION_EXPORT double DMEmojiStringVersionNumber;

//! Project version string for DMEmojiString.
FOUNDATION_EXPORT const unsigned char DMEmojiStringVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <DMEmojiString/PublicHeader.h>


// NSString

@interface NSString (Emoji)

- (bool)containsEmoji;

@end

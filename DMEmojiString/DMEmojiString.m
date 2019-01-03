//
//  DMEmojiString.m
//  DMEmojiString
//
//  Created by Desmond McNamee on 02.01.19.
//  Copyright © 2019 Desmond McNamee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreText/CoreText.h>
#import "DMEmojiString.h"

@implementation NSString (Emoji)

- (long)glyphCount {
    CFAttributedStringRef attrString = (__bridge CFAttributedStringRef)[[NSAttributedString alloc] initWithString:self];
    CTLineRef line = CTLineCreateWithAttributedString(attrString);
    return CTLineGetGlyphCount(line);
}

- (bool)containsEmoji {
    unichar character = [self characterAtIndex:0];
    
    return [self charIsEmoji:character];
}

- (bool)charIsEmoji:(unichar)charater {
    NSData *data = [self dataUsingEncoding:NSNonLossyASCIIStringEncoding];
    NSString *goodValue = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(goodValue);
//    0x1F600...0x1F64F, // Emoticons
//    0x1F300...0x1F5FF, // Misc Symbols and Pictographs
//    0x1F680...0x1F6FF, // Transport and Map
//    0x1F1E6...0x1F1FF, // Regional country flags
//    0x2600...0x26FF,   // Misc symbols
//    0x2700...0x27BF,   // Dingbats
//    0xFE00...0xFE0F,   // Variation Selectors
//    0x1F900...0x1F9FF,  // Supplemental Symbols and Pictographs
//    127000...127600, // Various asian characters
//    65024...65039, // Variation selector
//    9100...9300, // Misc items
//    8400...8447: // Combining Diacritical Marks for Symbols
    return charater == 0x0000;
}

@end

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: C:\Users\Thomas\Documents\Eclipse\Tux\tuxblocks\core\src\main\java\tuxkids\tuxblocks\core\effect\anim\Animation.java
//
//  Created by Thomas on 7/1/13.
//

@class IOSObjectArray;

#import "JreEmulation.h"
#import "tuxkids/tuxblocks/core/PlayNObject.h"

@interface TBAnimation : TBPlayNObject {
 @public
  IOSObjectArray *images_;
}

@property (nonatomic, retain) IOSObjectArray *images;

- (id)initWithNSString:(NSString *)folder
               withInt:(int)start
               withInt:(int)end
          withNSString:(NSString *)ext;
@end

typedef TBAnimation TuxkidsTuxblocksCoreEffectAnimAnimation;
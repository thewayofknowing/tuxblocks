//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/sound/Clip.java
//
//  Created by Thomas on 7/1/13.
//

#import "Sound.h"

@implementation TripleplaySoundClip_Silence

- (float)volume {
  return 0;
}

- (void)setVolumeWithFloat:(float)volume {
}

- (BOOL)isPlaying {
  return NO;
}

- (void)play {
}

- (void)fadeInWithFloat:(float)fadeMillis {
}

- (void)fadeOutWithFloat:(float)fadeMillis {
}

- (void)stop {
}

- (void)release__ {
}

- (void)preload {
}

- (id<PlaynCoreSound>)asSound {
  return [[[PlaynCoreSound_Silence alloc] init] autorelease];
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
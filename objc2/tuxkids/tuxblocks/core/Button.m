//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/Button.java
//
//  Created by Thomas on 7/10/13.
//

#import "java/lang/Math.h"
#import "java/lang/Throwable.h"
#import "playn/core/Assets.h"
#import "playn/core/Color.h"
#import "playn/core/Image.h"
#import "playn/core/Layer.h"
#import "playn/core/Pointer.h"
#import "tripleplay/util/Colors.h"
#import "tuxkids/tuxblocks/core/Button.h"
#import "tuxkids/tuxblocks/core/ImageLayerTintable.h"
#import "tuxkids/tuxblocks/core/PlayNObject.h"

@implementation TuxkidsTuxblocksCoreButton

@synthesize imageLayer_ = imageLayer__;
@synthesize onPressedListener = onPressedListener_;
@synthesize onReleaseListener = onReleaseListener_;
@synthesize onDragListener = onDragListener_;
@synthesize width_ = width__;
@synthesize height_ = height__;
@synthesize pressed_ = pressed__;
@synthesize isCircle_ = isCircle__;
@synthesize tint_ = tint__;
@synthesize tintPressed = tintPressed_;
@synthesize enabled_ = enabled__;

+ (float)UNPRESSED_ALPHA {
  return TuxkidsTuxblocksCoreButton_UNPRESSED_ALPHA;
}

- (id<PlaynCoreLayer>)layerAddable {
  return [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(imageLayer__)) layer];
}

- (TuxkidsTuxblocksCoreImageLayerTintable *)imageLayer {
  return imageLayer__;
}

- (id<PlaynCoreImage>)image {
  return [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(imageLayer__)) image];
}

- (float)x {
  return [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(imageLayer__)) tx];
}

- (float)y {
  return [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(imageLayer__)) ty];
}

- (float)width {
  return width__;
}

- (float)height {
  return height__;
}

- (BOOL)isCircle {
  return isCircle__;
}

- (BOOL)pressed {
  return pressed__;
}

- (int)tint {
  return [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(imageLayer__)) tint];
}

- (BOOL)enabled {
  return enabled__;
}

- (float)left {
  return [self x] - width__ / 2;
}

- (float)top {
  return [self y] - height__ / 2;
}

- (float)right {
  return [self x] + width__ / 2;
}

- (float)bottom {
  return [self y] + height__ / 2;
}

- (void)setLeftWithFloat:(float)left {
  [self setXWithFloat:left + width__ / 2];
}

- (void)setTopWithFloat:(float)top {
  [self setYWithFloat:top + height__ / 2];
}

- (void)setRightWithFloat:(float)right {
  [self setXWithFloat:right - width__ / 2];
}

- (void)setBottomWithFloat:(float)bottom {
  [self setYWithFloat:bottom - height__ / 2];
}

- (void)setXWithFloat:(float)x {
  [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(imageLayer__)) setTxWithFloat:x];
}

- (void)setYWithFloat:(float)y {
  [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(imageLayer__)) setTyWithFloat:y];
}

- (void)setPositionWithFloat:(float)x
                   withFloat:(float)y {
  [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(imageLayer__)) setTranslationWithFloat:x withFloat:y];
}

- (void)setSizeWithFloat:(float)width
               withFloat:(float)height {
  self.width_ = width;
  self.height_ = height;
  if ([((id<PlaynCoreImage>) [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(imageLayer__)) image]) isReady]) {
    [self adjustScale];
  }
}

- (void)setImageWithPlaynCoreImage:(id<PlaynCoreImage>)image {
  [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(imageLayer__)) setImageWithPlaynCoreImage:image];
  [((id<PlaynCoreImage>) [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(imageLayer__)) image]) addCallbackWithPlaynCoreUtilCallback:[[TuxkidsTuxblocksCoreButton_$1 alloc] initWithTuxkidsTuxblocksCoreButton:self]];
}

- (void)setIsCircleWithBOOL:(BOOL)isCircle {
  self.isCircle_ = isCircle;
}

- (void)setOnPressListenerWithTuxkidsTuxblocksCoreButton_OnPressedListener:(id<TuxkidsTuxblocksCoreButton_OnPressedListener>)onPressedListener {
  self.onPressedListener = onPressedListener;
}

- (void)setOnReleasedListenerWithTuxkidsTuxblocksCoreButton_OnReleasedListener:(id<TuxkidsTuxblocksCoreButton_OnReleasedListener>)onReleasedListener {
  self.onReleaseListener = onReleasedListener;
}

- (void)setOnDragListenerWithTuxkidsTuxblocksCoreButton_OnDragListener:(id<TuxkidsTuxblocksCoreButton_OnDragListener>)onDragListener {
  self.onDragListener = onDragListener;
}

- (void)setTintWithInt:(int)tint {
  [self setTintWithInt:tint withFloat:TuxkidsTuxblocksCoreButton_UNPRESSED_ALPHA];
}

- (void)setTintWithInt:(int)tint
             withFloat:(float)alphaUnpressed {
  [self setTintWithInt:[PlaynCoreColor withAlphaWithInt:tint withInt:(int) (255 * alphaUnpressed)] withInt:tint];
}

- (void)setTintWithInt:(int)tint
               withInt:(int)tintPressed {
  self.tint_ = tint;
  self.tintPressed = tintPressed;
  [self refreshTint];
}

- (void)setEnabledWithBOOL:(BOOL)enabled {
  self.enabled_ = enabled;
  [self refreshTint];
}

- (id)initWithNSString:(NSString *)imagePath
             withFloat:(float)width
             withFloat:(float)height
              withBOOL:(BOOL)isCircle {
  return [self initTuxkidsTuxblocksCoreButtonWithPlaynCoreImage:[((id<PlaynCoreAssets>) [TuxkidsTuxblocksCorePlayNObject assets]) getImageWithNSString:imagePath] withFloat:width withFloat:height withBOOL:isCircle];
}

- (void)refreshTint {
  int tint = pressed__ ? tintPressed_ : self.tint_;
  if (!enabled__) tint = [TripleplayUtilColors blendWithInt:tint withInt:[PlaynCoreColor withAlphaWithInt:[TripleplayUtilColors BLACK] withInt:[PlaynCoreColor alphaWithInt:tint]] withFloat:0.5f];
  [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(imageLayer__)) setTintWithInt:tint];
}

- (id)initTuxkidsTuxblocksCoreButtonWithPlaynCoreImage:(id<PlaynCoreImage>)image
                                             withFloat:(float)width
                                             withFloat:(float)height
                                              withBOOL:(BOOL)isCircle {
  if ((self = [super init])) {
    enabled__ = YES;
    self.width_ = width;
    self.height_ = height;
    self.isCircle_ = isCircle;
    imageLayer__ = [[TuxkidsTuxblocksCoreImageLayerTintable alloc] init];
    [self setImageWithPlaynCoreImage:image];
    [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(imageLayer__)) addListenerWithPlaynCorePointer_Listener:[[TuxkidsTuxblocksCoreButton_PointerListener alloc] initWithTuxkidsTuxblocksCoreButton:self]];
    [self setTintWithInt:[TripleplayUtilColors WHITE] withFloat:TuxkidsTuxblocksCoreButton_UNPRESSED_ALPHA];
  }
  return self;
}

- (id)initWithPlaynCoreImage:(id<PlaynCoreImage>)image
                   withFloat:(float)width
                   withFloat:(float)height
                    withBOOL:(BOOL)isCircle {
  return [self initTuxkidsTuxblocksCoreButtonWithPlaynCoreImage:image withFloat:width withFloat:height withBOOL:isCircle];
}

- (id)initWithPlaynCoreImage:(id<PlaynCoreImage>)image
                    withBOOL:(BOOL)isCircle {
  return [self initTuxkidsTuxblocksCoreButtonWithPlaynCoreImage:image withFloat:[((id<PlaynCoreImage>) NIL_CHK(image)) width] withFloat:[((id<PlaynCoreImage>) NIL_CHK(image)) height] withBOOL:isCircle];
}

- (void)destroy {
  [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(imageLayer__)) destroy];
}

- (BOOL)hitWithFloat:(float)x
           withFloat:(float)y {
  if (isCircle__) {
    return [self hitCircleWithFloat:x withFloat:y];
  }
  else {
    return [self hitRectangleWithFloat:x withFloat:y];
  }
}

- (BOOL)hitRectangleWithFloat:(float)x
                    withFloat:(float)y {
  return [JavaLangMath absWithFloat:x - [self x]] < width__ / 2 && [JavaLangMath absWithFloat:y - [self y]] < height__ / 2;
}

- (BOOL)hitCircleWithFloat:(float)x
                 withFloat:(float)y {
  return [TuxkidsTuxblocksCorePlayNObject distanceWithFloat:[self x] withFloat:[self y] withFloat:x withFloat:y] < width__ / 2;
}

- (void)adjustScale {
  [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(imageLayer__)) setScaleWithFloat:width__ / [((id<PlaynCoreImage>) [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(imageLayer__)) image]) width] withFloat:height__ / [((id<PlaynCoreImage>) [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(imageLayer__)) image]) height]];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreButton *typedCopy = (TuxkidsTuxblocksCoreButton *) copy;
  typedCopy.imageLayer_ = imageLayer__;
  typedCopy.onPressedListener = onPressedListener_;
  typedCopy.onReleaseListener = onReleaseListener_;
  typedCopy.onDragListener = onDragListener_;
  typedCopy.width_ = width__;
  typedCopy.height_ = height__;
  typedCopy.pressed_ = pressed__;
  typedCopy.isCircle_ = isCircle__;
  typedCopy.tint_ = tint__;
  typedCopy.tintPressed = tintPressed_;
  typedCopy.enabled_ = enabled__;
}

@end
@implementation TuxkidsTuxblocksCoreButton_PointerListener

@synthesize this$0 = this$0_;

- (void)onPointerStartWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  if (!this$0_.enabled_ || ![self insideLocalWithPlaynCorePointer_Event:event]) return;
  this$0_.pressed_ = YES;
  [this$0_ refreshTint];
  if (this$0_.onPressedListener != nil) [this$0_.onPressedListener onPressWithPlaynCorePointer_Event:event];
}

- (void)onPointerEndWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  if (!this$0_.enabled_ || !this$0_.pressed_) return;
  this$0_.pressed_ = NO;
  [this$0_ refreshTint];
  if (this$0_.onReleaseListener != nil) [this$0_.onReleaseListener onReleaseWithPlaynCorePointer_Event:event withBOOL:[self insideLocalWithPlaynCorePointer_Event:event]];
}

- (BOOL)insideLocalWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  float dw = [((id<PlaynCoreImage>) [this$0_ image]) width] / 2;
  float dh = [((id<PlaynCoreImage>) [this$0_ image]) height] / 2;
  if (this$0_.isCircle_) {
    return [TuxkidsTuxblocksCorePlayNObject distanceWithFloat:[((id<PlaynCorePointer_Event>) NIL_CHK(event)) localX] withFloat:[((id<PlaynCorePointer_Event>) NIL_CHK(event)) localY] withFloat:dw withFloat:dh] <= dw;
  }
  else {
    return [JavaLangMath absWithFloat:[((id<PlaynCorePointer_Event>) NIL_CHK(event)) localX] - dw] <= dw && [JavaLangMath absWithFloat:[((id<PlaynCorePointer_Event>) NIL_CHK(event)) localY] - dh] <= dh;
  }
}

- (void)onPointerDragWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  if (!this$0_.enabled_) return;
  if (this$0_.onDragListener != nil) [this$0_.onDragListener onDragWithPlaynCorePointer_Event:event];
}

- (void)onPointerCancelWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
}

- (id)initWithTuxkidsTuxblocksCoreButton:(TuxkidsTuxblocksCoreButton *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreButton_PointerListener *typedCopy = (TuxkidsTuxblocksCoreButton_PointerListener *) copy;
  typedCopy.this$0 = this$0_;
}

@end
@implementation TuxkidsTuxblocksCoreButton_$1

@synthesize this$0 = this$0_;

- (void)onSuccessWithId:(id<PlaynCoreImage>)result {
  [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(this$0_.imageLayer_)) setOriginWithFloat:[((id<PlaynCoreImage>) NIL_CHK(result)) width] / 2 withFloat:[((id<PlaynCoreImage>) NIL_CHK(result)) height] / 2];
  [this$0_ adjustScale];
}

- (void)onFailureWithJavaLangThrowable:(JavaLangThrowable *)cause {
  [((JavaLangThrowable *) NIL_CHK(cause)) printStackTrace];
}

- (id)initWithTuxkidsTuxblocksCoreButton:(TuxkidsTuxblocksCoreButton *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreButton_$1 *typedCopy = (TuxkidsTuxblocksCoreButton_$1 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
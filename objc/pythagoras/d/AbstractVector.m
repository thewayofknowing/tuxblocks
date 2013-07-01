//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/AbstractVector.java
//
//  Created by Thomas on 7/1/13.
//

#import "IVector.h"
#import "Platform.h"
#import "Vector.h"
#import "Vectors.h"
#import "XY.h"
#import "java/lang/Math.h"

@implementation PythagorasDAbstractVector

- (double)dotWithPythagorasDIVector:(id<PythagorasDIVector>)other {
  return [self x] * [((id<PythagorasDIVector>) NIL_CHK(other)) x] + [self y] * [((id<PythagorasDIVector>) NIL_CHK(other)) y];
}

- (PythagorasDVector *)crossWithPythagorasDIVector:(id<PythagorasDIVector>)other {
  return [self crossWithPythagorasDIVector:other withPythagorasDVector:[[[PythagorasDVector alloc] init] autorelease]];
}

- (PythagorasDVector *)crossWithPythagorasDIVector:(id<PythagorasDIVector>)other
                             withPythagorasDVector:(PythagorasDVector *)result {
  double x = [self x], y = [self y], ox = [((id<PythagorasDIVector>) NIL_CHK(other)) x], oy = [((id<PythagorasDIVector>) NIL_CHK(other)) y];
  return [((PythagorasDVector *) NIL_CHK(result)) setWithDouble:y * ox - x * oy withDouble:x * oy - y * ox];
}

- (PythagorasDVector *)negate {
  return [self negateWithPythagorasDVector:[[[PythagorasDVector alloc] init] autorelease]];
}

- (PythagorasDVector *)negateWithPythagorasDVector:(PythagorasDVector *)result {
  return [((PythagorasDVector *) NIL_CHK(result)) setWithDouble:-[self x] withDouble:-[self y]];
}

- (PythagorasDVector *)normalize {
  return [self normalizeWithPythagorasDVector:[[[PythagorasDVector alloc] init] autorelease]];
}

- (PythagorasDVector *)normalizeWithPythagorasDVector:(PythagorasDVector *)result {
  return [self scale__WithDouble:1.0f / [self length] withPythagorasDVector:result];
}

- (double)length {
  return [JavaLangMath sqrtWithDouble:[self lengthSq]];
}

- (double)lengthSq {
  double x = [self x], y = [self y];
  return (x * x + y * y);
}

- (BOOL)isZero {
  return [PythagorasDVectors isZeroWithDouble:[self x] withDouble:[self y]];
}

- (double)distanceWithPythagorasDIVector:(id<PythagorasDIVector>)other {
  return [JavaLangMath sqrtWithDouble:[self distanceSqWithPythagorasDIVector:other]];
}

- (double)distanceSqWithPythagorasDIVector:(id<PythagorasDIVector>)other {
  double dx = [self x] - [((id<PythagorasDIVector>) NIL_CHK(other)) x], dy = [self y] - [((id<PythagorasDIVector>) NIL_CHK(other)) y];
  return dx * dx + dy * dy;
}

- (double)angle {
  return [JavaLangMath atan2WithDouble:[self y] withDouble:[self x]];
}

- (double)angleBetweenWithPythagorasDIVector:(id<PythagorasDIVector>)other {
  double cos = [self dotWithPythagorasDIVector:other] / ([self length] * [((id<PythagorasDIVector>) NIL_CHK(other)) length]);
  return cos >= 1.0f ? 0.0f : [JavaLangMath acosWithDouble:cos];
}

- (PythagorasDVector *)scale__WithDouble:(double)v {
  return [self scale__WithDouble:v withPythagorasDVector:[[[PythagorasDVector alloc] init] autorelease]];
}

- (PythagorasDVector *)scale__WithDouble:(double)v
                   withPythagorasDVector:(PythagorasDVector *)result {
  return [((PythagorasDVector *) NIL_CHK(result)) setWithDouble:[self x] * v withDouble:[self y] * v];
}

- (PythagorasDVector *)scale__WithPythagorasDIVector:(id<PythagorasDIVector>)other {
  return [self scale__WithPythagorasDIVector:other withPythagorasDVector:[[[PythagorasDVector alloc] init] autorelease]];
}

- (PythagorasDVector *)scale__WithPythagorasDIVector:(id<PythagorasDIVector>)other
                               withPythagorasDVector:(PythagorasDVector *)result {
  return [((PythagorasDVector *) NIL_CHK(result)) setWithDouble:[self x] * [((id<PythagorasDIVector>) NIL_CHK(other)) x] withDouble:[self y] * [((id<PythagorasDIVector>) NIL_CHK(other)) y]];
}

- (PythagorasDVector *)addWithPythagorasDIVector:(id<PythagorasDIVector>)other {
  return [self addWithPythagorasDIVector:other withPythagorasDVector:[[[PythagorasDVector alloc] init] autorelease]];
}

- (PythagorasDVector *)addWithPythagorasDIVector:(id<PythagorasDIVector>)other
                           withPythagorasDVector:(PythagorasDVector *)result {
  return [self addWithDouble:[((id<PythagorasDIVector>) NIL_CHK(other)) x] withDouble:[((id<PythagorasDIVector>) NIL_CHK(other)) y] withPythagorasDVector:result];
}

- (PythagorasDVector *)subtractWithPythagorasDIVector:(id<PythagorasDIVector>)other {
  return [self subtractWithPythagorasDIVector:other withPythagorasDVector:[[[PythagorasDVector alloc] init] autorelease]];
}

- (PythagorasDVector *)subtractWithPythagorasDIVector:(id<PythagorasDIVector>)other
                                withPythagorasDVector:(PythagorasDVector *)result {
  return [self addWithDouble:-[((id<PythagorasDIVector>) NIL_CHK(other)) x] withDouble:-[((id<PythagorasDIVector>) NIL_CHK(other)) y] withPythagorasDVector:result];
}

- (PythagorasDVector *)addWithDouble:(double)x
                          withDouble:(double)y {
  return [self addWithDouble:x withDouble:y withPythagorasDVector:[[[PythagorasDVector alloc] init] autorelease]];
}

- (PythagorasDVector *)addWithDouble:(double)x
                          withDouble:(double)y
               withPythagorasDVector:(PythagorasDVector *)result {
  return [((PythagorasDVector *) NIL_CHK(result)) setWithDouble:[self x] + x withDouble:[self y] + y];
}

- (PythagorasDVector *)subtractWithDouble:(double)x
                               withDouble:(double)y {
  return [self subtractWithDouble:x withDouble:y withPythagorasDVector:[[[PythagorasDVector alloc] init] autorelease]];
}

- (PythagorasDVector *)subtractWithDouble:(double)x
                               withDouble:(double)y
                    withPythagorasDVector:(PythagorasDVector *)result {
  return [((PythagorasDVector *) NIL_CHK(result)) setWithDouble:[self x] - x withDouble:[self y] - y];
}

- (PythagorasDVector *)addScaledWithPythagorasDIVector:(id<PythagorasDIVector>)other
                                            withDouble:(double)v {
  return [self addScaledWithPythagorasDIVector:other withDouble:v withPythagorasDVector:[[[PythagorasDVector alloc] init] autorelease]];
}

- (PythagorasDVector *)addScaledWithPythagorasDIVector:(id<PythagorasDIVector>)other
                                            withDouble:(double)v
                                 withPythagorasDVector:(PythagorasDVector *)result {
  return [((PythagorasDVector *) NIL_CHK(result)) setWithDouble:[self x] + [((id<PythagorasDIVector>) NIL_CHK(other)) x] * v withDouble:[self y] + [((id<PythagorasDIVector>) NIL_CHK(other)) y] * v];
}

- (PythagorasDVector *)rotateWithDouble:(double)angle {
  return [self rotateWithDouble:angle withPythagorasDVector:[[[PythagorasDVector alloc] init] autorelease]];
}

- (PythagorasDVector *)rotateWithDouble:(double)angle
                  withPythagorasDVector:(PythagorasDVector *)result {
  double x = [self x], y = [self y];
  double sina = [JavaLangMath sinWithDouble:angle], cosa = [JavaLangMath cosWithDouble:angle];
  return [((PythagorasDVector *) NIL_CHK(result)) setWithDouble:x * cosa - y * sina withDouble:x * sina + y * cosa];
}

- (PythagorasDVector *)rotateAndAddWithDouble:(double)angle
                       withPythagorasDIVector:(id<PythagorasDIVector>)add
                        withPythagorasDVector:(PythagorasDVector *)result {
  double x = [self x], y = [self y];
  double sina = [JavaLangMath sinWithDouble:angle], cosa = [JavaLangMath cosWithDouble:angle];
  return [((PythagorasDVector *) NIL_CHK(result)) setWithDouble:x * cosa - y * sina + [((id<PythagorasDIVector>) NIL_CHK(add)) x] withDouble:x * sina + y * cosa + [((id<PythagorasDIVector>) NIL_CHK(add)) y]];
}

- (PythagorasDVector *)rotateScaleAndAddWithDouble:(double)angle
                                        withDouble:(double)scale_
                            withPythagorasDIVector:(id<PythagorasDIVector>)add
                             withPythagorasDVector:(PythagorasDVector *)result {
  double x = [self x], y = [self y];
  double sina = [JavaLangMath sinWithDouble:angle], cosa = [JavaLangMath cosWithDouble:angle];
  return [((PythagorasDVector *) NIL_CHK(result)) setWithDouble:(x * cosa - y * sina) * scale_ + [((id<PythagorasDIVector>) NIL_CHK(add)) x] withDouble:(x * sina + y * cosa) * scale_ + [((id<PythagorasDIVector>) NIL_CHK(add)) y]];
}

- (PythagorasDVector *)lerpWithPythagorasDIVector:(id<PythagorasDIVector>)other
                                       withDouble:(double)t {
  return [self lerpWithPythagorasDIVector:other withDouble:t withPythagorasDVector:[[[PythagorasDVector alloc] init] autorelease]];
}

- (PythagorasDVector *)lerpWithPythagorasDIVector:(id<PythagorasDIVector>)other
                                       withDouble:(double)t
                            withPythagorasDVector:(PythagorasDVector *)result {
  double x = [self x], y = [self y];
  double dx = [((id<PythagorasDIVector>) NIL_CHK(other)) x] - x, dy = [((id<PythagorasDIVector>) NIL_CHK(other)) y] - y;
  return [((PythagorasDVector *) NIL_CHK(result)) setWithDouble:x + t * dx withDouble:y + t * dy];
}

- (PythagorasDVector *)clone {
  return [[[PythagorasDVector alloc] initWithPythagorasDIVector:self] autorelease];
}

- (BOOL)isEqual:(id)obj {
  if (obj == self) {
    return YES;
  }
  if ([obj isKindOfClass:[PythagorasDAbstractVector class]]) {
    PythagorasDAbstractVector *p = (PythagorasDAbstractVector *) obj;
    return [self x] == [((PythagorasDAbstractVector *) NIL_CHK(p)) x] && [self y] == [((PythagorasDAbstractVector *) NIL_CHK(p)) y];
  }
  return NO;
}

- (NSUInteger)hash {
  return [PythagorasUtilPlatform hashCodeWithDouble:[self x]] ^ [PythagorasUtilPlatform hashCodeWithDouble:[self y]];
}

- (NSString *)description {
  return [PythagorasDVectors vectorToStringWithDouble:[self x] withDouble:[self y]];
}

- (double)x {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (double)y {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
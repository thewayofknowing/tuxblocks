//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/json/JsonTypedArray.java
//
//  Created by Thomas on 7/1/13.
//

#import "IOSClass.h"
#import "Json.h"
#import "java/lang/Boolean.h"
#import "java/lang/Double.h"
#import "java/lang/Float.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/Integer.h"
#import "java/lang/UnsupportedOperationException.h"
#import "java/util/HashMap.h"
#import "java/util/Iterator.h"
#import "java/util/Map.h"
#import "java/util/NoSuchElementException.h"

@implementation PlaynCoreJsonJsonTypedArray

static id<JavaUtilMap> PlaynCoreJsonJsonTypedArray_getters_;

- (id<PlaynCoreJson_Array>)array {
  return array_;
}
- (void)setArray:(id<PlaynCoreJson_Array>)array {
  JreOperatorRetainedAssign(&array_, self, array);
}
@synthesize array = array_;
- (id<PlaynCoreJsonJsonTypedArray_Getter>)getter {
  return getter_;
}
- (void)setGetter:(id<PlaynCoreJsonJsonTypedArray_Getter>)getter {
  JreOperatorRetainedAssign(&getter_, self, getter);
}
@synthesize getter = getter_;

+ (id<JavaUtilMap>)getters {
  return PlaynCoreJsonJsonTypedArray_getters_;
}

+ (void)setGetters:(id<JavaUtilMap>)getters {
  JreOperatorRetainedAssign(&PlaynCoreJsonJsonTypedArray_getters_, self, getters);
}

- (id)initWithPlaynCoreJson_Array:(id<PlaynCoreJson_Array>)array
                     withIOSClass:(IOSClass *)type {
  if ((self = [super init])) {
    self.array = array;
    id<PlaynCoreJsonJsonTypedArray_Getter> getter = (id<PlaynCoreJsonJsonTypedArray_Getter>) ((id<PlaynCoreJsonJsonTypedArray_Getter>) [((id<JavaUtilMap>) NIL_CHK(PlaynCoreJsonJsonTypedArray_getters_)) getWithId:type]);
    if (getter == nil) {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Only json types may be used for TypedArray, not '%@'", [NIL_CHK(type) getName]]] autorelease];
    }
    self.getter = getter;
  }
  return self;
}

- (int)length {
  return [((id<PlaynCoreJson_Array>) NIL_CHK(array_)) length];
}

- (id)getWithInt:(int)index {
  return [((id<PlaynCoreJsonJsonTypedArray_Getter>) NIL_CHK(getter_)) getWithPlaynCoreJson_Array:array_ withInt:index withId:nil];
}

- (id)getWithInt:(int)index
          withId:(id)dflt {
  return [((id<PlaynCoreJsonJsonTypedArray_Getter>) NIL_CHK(getter_)) getWithPlaynCoreJson_Array:array_ withInt:index withId:dflt];
}

- (id<JavaUtilIterator>)iterator {
  return [[[PlaynCoreJsonJsonTypedArray_$8 alloc] initWithPlaynCoreJsonJsonTypedArray:self] autorelease];
}

+ (void)initialize {
  if (self == [PlaynCoreJsonJsonTypedArray class]) {
    JreOperatorRetainedAssign(&PlaynCoreJsonJsonTypedArray_getters_, self, [[[JavaUtilHashMap alloc] init] autorelease]);
    {
      (void) [((id<JavaUtilMap>) NIL_CHK(PlaynCoreJsonJsonTypedArray_getters_)) putWithId:[IOSClass classWithClass:[JavaLangBoolean class]] withId:[[[PlaynCoreJsonJsonTypedArray_$1 alloc] init] autorelease]];
      (void) [((id<JavaUtilMap>) NIL_CHK(PlaynCoreJsonJsonTypedArray_getters_)) putWithId:[IOSClass classWithClass:[JavaLangInteger class]] withId:[[[PlaynCoreJsonJsonTypedArray_$2 alloc] init] autorelease]];
      (void) [((id<JavaUtilMap>) NIL_CHK(PlaynCoreJsonJsonTypedArray_getters_)) putWithId:[IOSClass classWithClass:[JavaLangDouble class]] withId:[[[PlaynCoreJsonJsonTypedArray_$3 alloc] init] autorelease]];
      (void) [((id<JavaUtilMap>) NIL_CHK(PlaynCoreJsonJsonTypedArray_getters_)) putWithId:[IOSClass classWithClass:[JavaLangFloat class]] withId:[[[PlaynCoreJsonJsonTypedArray_$4 alloc] init] autorelease]];
      (void) [((id<JavaUtilMap>) NIL_CHK(PlaynCoreJsonJsonTypedArray_getters_)) putWithId:[IOSClass classWithClass:[NSString class]] withId:[[[PlaynCoreJsonJsonTypedArray_$5 alloc] init] autorelease]];
      (void) [((id<JavaUtilMap>) NIL_CHK(PlaynCoreJsonJsonTypedArray_getters_)) putWithId:[IOSClass classWithProtocol:@protocol(PlaynCoreJson_Array)] withId:[[[PlaynCoreJsonJsonTypedArray_$6 alloc] init] autorelease]];
      (void) [((id<JavaUtilMap>) NIL_CHK(PlaynCoreJsonJsonTypedArray_getters_)) putWithId:[IOSClass classWithProtocol:@protocol(PlaynCoreJson_Object)] withId:[[[PlaynCoreJsonJsonTypedArray_$7 alloc] init] autorelease]];
    }
  }
}

- (void)dealloc {
  JreOperatorRetainedAssign(&getter_, self, nil);
  JreOperatorRetainedAssign(&array_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreJsonJsonTypedArray *typedCopy = (PlaynCoreJsonJsonTypedArray *) copy;
  typedCopy.array = array_;
  typedCopy.getter = getter_;
}

@end
@implementation PlaynCoreJsonJsonTypedArray_$1

- (JavaLangBoolean *)getWithPlaynCoreJson_Array:(id<PlaynCoreJson_Array>)array
                                        withInt:(int)index
                                         withId:(JavaLangBoolean *)dflt {
  return [JavaLangBoolean valueOfWithBOOL:dflt == nil ? [((id<PlaynCoreJson_Array>) NIL_CHK(array)) getBooleanWithInt:index] : [((id<PlaynCoreJson_Array>) NIL_CHK(array)) getBooleanWithInt:index withBOOL:[((JavaLangBoolean *) NIL_CHK(dflt)) booleanValue]]];
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
@implementation PlaynCoreJsonJsonTypedArray_$2

- (JavaLangInteger *)getWithPlaynCoreJson_Array:(id<PlaynCoreJson_Array>)array
                                        withInt:(int)index
                                         withId:(JavaLangInteger *)dflt {
  return [JavaLangInteger valueOfWithInt:dflt == nil ? [((id<PlaynCoreJson_Array>) NIL_CHK(array)) getIntWithInt:index] : [((id<PlaynCoreJson_Array>) NIL_CHK(array)) getIntWithInt:index withInt:[((JavaLangInteger *) NIL_CHK(dflt)) intValue]]];
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
@implementation PlaynCoreJsonJsonTypedArray_$3

- (JavaLangDouble *)getWithPlaynCoreJson_Array:(id<PlaynCoreJson_Array>)array
                                       withInt:(int)index
                                        withId:(JavaLangDouble *)dflt {
  return [JavaLangDouble valueOfWithDouble:dflt == nil ? [((id<PlaynCoreJson_Array>) NIL_CHK(array)) getDoubleWithInt:index] : [((id<PlaynCoreJson_Array>) NIL_CHK(array)) getDoubleWithInt:index withDouble:[((JavaLangDouble *) NIL_CHK(dflt)) doubleValue]]];
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
@implementation PlaynCoreJsonJsonTypedArray_$4

- (JavaLangFloat *)getWithPlaynCoreJson_Array:(id<PlaynCoreJson_Array>)array
                                      withInt:(int)index
                                       withId:(JavaLangFloat *)dflt {
  return [JavaLangFloat valueOfWithFloat:dflt == nil ? [((id<PlaynCoreJson_Array>) NIL_CHK(array)) getNumberWithInt:index] : [((id<PlaynCoreJson_Array>) NIL_CHK(array)) getNumberWithInt:index withFloat:[((JavaLangFloat *) NIL_CHK(dflt)) floatValue]]];
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
@implementation PlaynCoreJsonJsonTypedArray_$5

- (NSString *)getWithPlaynCoreJson_Array:(id<PlaynCoreJson_Array>)array
                                 withInt:(int)index
                                  withId:(NSString *)dflt {
  return [((id<PlaynCoreJson_Array>) NIL_CHK(array)) getStringWithInt:index withNSString:dflt];
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
@implementation PlaynCoreJsonJsonTypedArray_$6

- (id<PlaynCoreJson_Array>)getWithPlaynCoreJson_Array:(id<PlaynCoreJson_Array>)array
                                              withInt:(int)index
                                               withId:(id<PlaynCoreJson_Array>)dflt {
  return [((id<PlaynCoreJson_Array>) NIL_CHK(array)) getArrayWithInt:index withPlaynCoreJson_Array:dflt];
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
@implementation PlaynCoreJsonJsonTypedArray_$7

- (id<PlaynCoreJson_Object>)getWithPlaynCoreJson_Array:(id<PlaynCoreJson_Array>)array
                                               withInt:(int)index
                                                withId:(id<PlaynCoreJson_Object>)dflt {
  return [((id<PlaynCoreJson_Array>) NIL_CHK(array)) getObjectWithInt:index withPlaynCoreJson_Object:dflt];
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
@implementation PlaynCoreJsonJsonTypedArray_$8

- (PlaynCoreJsonJsonTypedArray *)this$0 {
  return this$0_;
}
- (void)setThis$0:(PlaynCoreJsonJsonTypedArray *)this$0 {
  JreOperatorRetainedAssign(&this$0_, self, this$0);
}
@synthesize this$0 = this$0_;
@synthesize index = index_;

- (BOOL)hasNext {
  return index_ < [this$0_ length];
}

- (id)next {
  if (index_ >= [this$0_ length]) {
    @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  }
  return [this$0_ getWithInt:index_++];
}

- (void)remove {
  @throw [[[JavaLangUnsupportedOperationException alloc] init] autorelease];
}

- (id)initWithPlaynCoreJsonJsonTypedArray:(PlaynCoreJsonJsonTypedArray *)outer$ {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, self, outer$);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&this$0_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreJsonJsonTypedArray_$8 *typedCopy = (PlaynCoreJsonJsonTypedArray_$8 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.index = index_;
}

@end
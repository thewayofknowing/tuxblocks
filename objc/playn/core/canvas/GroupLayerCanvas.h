//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/canvas/GroupLayerCanvas.java
//
//  Created by Thomas on 7/1/13.
//

@class PlaynCoreGroupLayerImpl;
@class PythagorasFPoint;
@protocol PlaynCoreCanvas;
@protocol PlaynCoreInternalTransform;
@protocol PlaynCoreLayer;

#import "JreEmulation.h"
#import "GroupLayer.h"
#import "Layer.h"
#import "LayerCanvas.h"
#import "ParentLayer.h"

@interface PlaynCoreCanvasGroupLayerCanvas : PlaynCoreCanvasLayerCanvas < PlaynCoreGroupLayer, PlaynCoreParentLayer > {
 @public
  PlaynCoreGroupLayerImpl *impl_;
}

@property (nonatomic, retain) PlaynCoreGroupLayerImpl *impl;

- (id)initWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)xform;
- (id<PlaynCoreLayer>)getWithInt:(int)index;
- (void)addWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer;
- (void)addAtWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer
                      withFloat:(float)tx
                      withFloat:(float)ty;
- (void)removeWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer;
- (void)clear;
- (int)size;
- (void)destroy;
- (void)onAdd;
- (void)onRemove;
- (id<PlaynCoreLayer>)hitTestDefaultWithPythagorasFPoint:(PythagorasFPoint *)p;
- (void)depthChangedWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer
                             withFloat:(float)oldDepth;
- (void)paintWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
                       withFloat:(float)parentAlpha;
- (void)paintChildrenWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
                               withFloat:(float)alpha;
@end

@interface PlaynCoreCanvasGroupLayerCanvas_Clipped : PlaynCoreCanvasGroupLayerCanvas < PlaynCoreGroupLayer_Clipped, PlaynCoreLayer_HasSize > {
 @public
  float width__, height__;
}

@property (nonatomic, assign) float width_;
@property (nonatomic, assign) float height_;

- (id)initWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)xform
                               withFloat:(float)width
                               withFloat:(float)height;
- (void)setSizeWithFloat:(float)width
               withFloat:(float)height;
- (void)setWidthWithFloat:(float)width;
- (void)setHeightWithFloat:(float)height;
- (float)width;
- (float)height;
- (float)scaledWidth;
- (float)scaledHeight;
- (void)paintChildrenWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
                               withFloat:(float)alpha;
@end
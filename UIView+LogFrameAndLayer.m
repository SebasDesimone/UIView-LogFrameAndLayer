//
//  UIView+LogFrameAndLayer.m
//
//  Created by Sebastian Desimone on 5/20/12.
//
//    The MIT License (MIT)
//
//    Copyright (c) 2012 Sebastian Desimone
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy of
//    this software and associated documentation files (the "Software"), to deal in
//    the Software without restriction, including without limitation the rights to
//    use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//    the Software, and to permit persons to whom the Software is furnished to do so,
//    subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in all
//    copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//    FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//    COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//    IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//    CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "UIView+LogFrameAndLayer.h"

@implementation UIView (LogFrameAndLayer)

-(void) logPosition {
    NSLog(@"View => Frame = {%f, %f, %f, %f} Bounds = {%f, %f, %f, %f} Center = {%f, %f}",
          self.frame.origin.x, self.frame.origin.y, self.frame.size.width, self.frame.size.height,
          self.bounds.origin.x, self.bounds.origin.y, self.bounds.size.width, self.bounds.size.height,
          self.center.x, self.center.y);
}

-(void) logLayerPosition {
    NSLog(@"Layer => Frame = {%f, %f, %f, %f} Bounds = {%f, %f, %f, %f} Position = {%f, %f}",
          self.layer.frame.origin.x, self.layer.frame.origin.y, self.layer.frame.size.width, self.layer.frame.size.height,
          self.layer.bounds.origin.x, self.layer.bounds.origin.y, self.layer.bounds.size.width, self.layer.bounds.size.height,
          self.layer.position.x, self.layer.position.y);
}

@end


@implementation CALayer (LogPosition)

-(void) logPosition {
    NSLog(@"Layer => Frame = {%f, %f, %f, %f} Bounds = {%f, %f, %f, %f} Position = {%f, %f}",
          self.frame.origin.x, self.frame.origin.y, self.frame.size.width, self.frame.size.height,
          self.bounds.origin.x, self.bounds.origin.y, self.bounds.size.width, self.bounds.size.height,
          self.position.x, self.position.y);
}

@end

//
//  GraphicsViewControllerView.m
//  Main Project
//
//  Created by Vandad Nahavandipoor on 11-03-30.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GraphicsViewControllerView.h"

@implementation GraphicsViewControllerView

- (id)initWithFrame:(CGRect)frame{
  self = [super initWithFrame:frame];
  if (self) {
    // Initialization code
  }
  return self;
}

//- (void) drawRectAtTopOfScreen{
//  
//  /* Get the handle to the current context */
//  CGContextRef currentContext = 
//    UIGraphicsGetCurrentContext();
//  
//  CGContextSetShadowWithColor(currentContext, 
//                              CGSizeMake(10.0f, 10.0f),
//                              20.0f, 
//                              [[UIColor grayColor] CGColor]);
//  
//  /* Create the path first. Just the path handle. */
//  CGMutablePathRef path = CGPathCreateMutable();
//  
//  /* Here is our rectangle boudnaries */
//  CGRect firstRect = CGRectMake(55.0f,
//                                60.0f, 
//                                150.0f, 
//                                150.0f);
//  
//  /* Add the rectangle to the path */
//  CGPathAddRect(path, 
//                NULL,
//                firstRect);
//  
//  /* Add the path to the context */
//  CGContextAddPath(currentContext,
//                   path);
//  
//  /* Set the fill color to cornflower blue */
//  [[UIColor colorWithRed:0.20f
//                   green:0.60f
//                    blue:0.80f
//                   alpha:1.0f] setFill];
//  
//  /* Fill the path on the context */
//  CGContextDrawPath(currentContext,
//                    kCGPathFill);
//  
//  /* Dispose of the path */
//  CGPathRelease(path);
//  
//}

- (void) drawRectAtTopOfScreen{
  
  /* Get the handle to the current context */
  CGContextRef currentContext = 
    UIGraphicsGetCurrentContext();
  
  CGContextSaveGState(currentContext);
  
  CGContextSetShadowWithColor(currentContext, 
                              CGSizeMake(10.0f, 10.0f),
                              20.0f, 
                              [[UIColor grayColor] CGColor]);
  
  /* Create the path first. Just the path handle. */
  CGMutablePathRef path = CGPathCreateMutable();
  
  /* Here is our rectangle boudnaries */
  CGRect firstRect = CGRectMake(55.0f,
                                60.0f, 
                                150.0f, 
                                150.0f);
  
  /* Add the rectangle to the path */
  CGPathAddRect(path, 
                NULL,
                firstRect);
  
  /* Add the path to the context */
  CGContextAddPath(currentContext,
                   path);
  
  /* Set the fill color to cornflower blue */
  [[UIColor colorWithRed:0.20f
                   green:0.60f
                    blue:0.80f
                   alpha:1.0f] setFill];
  
  /* Fill the path on the context */
  CGContextDrawPath(currentContext,
                    kCGPathFill);
  
  /* Dispose of the path */
  CGPathRelease(path);
  
  /* Restore the context to how it was
   when we started */
  CGContextRestoreGState(currentContext);
  
}

- (void) drawRectAtBottomOfScreen{
  
  /* Get the handle to the current context */
  CGContextRef currentContext = 
    UIGraphicsGetCurrentContext();
  
  CGMutablePathRef secondPath = CGPathCreateMutable();
  
  CGRect secondRect = CGRectMake(150.0f,
                                 250.0f, 
                                 100.0f, 
                                 100.0f);
  CGPathAddRect(secondPath, 
                NULL,
                secondRect);
  
  CGContextAddPath(currentContext,
                   secondPath);
  
  [[UIColor purpleColor] setFill];
  
  CGContextDrawPath(currentContext, 
                    kCGPathFill);
  
  CGPathRelease(secondPath);
  
}

- (void)drawRect:(CGRect)rect{
  // Drawing code
  
  [self drawRectAtTopOfScreen];
  [self drawRectAtBottomOfScreen];
  
}


- (void)dealloc{
  [super dealloc];
}

@end

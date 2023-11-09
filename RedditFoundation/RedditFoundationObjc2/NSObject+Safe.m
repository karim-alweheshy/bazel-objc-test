//
//  Copyright © Reddit. All rights reserved.
//

#import "NSObject+Safe.h"

// Either this
@import RedditFoundationObjc;
// Or this
#import <RedditFoundationObjc/RedditFoundationDefines.h>

@implementation NSObject (Safe)

- (void)red_safePerformSelector:(SEL)aSelector {
  DebugAssert([self respondsToSelector:aSelector], @"selector non existing");
  if ([self respondsToSelector:aSelector]) {
    [self performSelector:aSelector];
  }
}

@end

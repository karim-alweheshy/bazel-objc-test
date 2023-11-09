//
//  Copyright © Reddit. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Safe)

- (void)red_safePerformSelector:(SEL)aSelector;

@end

NS_ASSUME_NONNULL_END

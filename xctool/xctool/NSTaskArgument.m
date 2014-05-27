//
//  NSTaskArgument.m
//  xctool
//
//  Created by Ilian Iliev on 9/11/13.
//

#import "NSTaskArgument.h"

@interface NSTaskArgument ()
@property(copy) NSString *string;
@end

@implementation NSTaskArgument

+ (instancetype) taskArgumentWithString:(NSString *)str {
  NSTaskArgument *ret = [[NSTaskArgument alloc] init];
  ret.string = str;
  return ret;
}

- (const char *) fileSystemRepresentation {
  return self.string.UTF8String;
}

- (id) forwardingTargetForSelector:(SEL)aSelector {
  return self.string;
}

@end

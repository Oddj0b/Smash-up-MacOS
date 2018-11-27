#define STRINGIZE(macro) #macro
#define STRINGIFY(macro) STRINGIZE(macro)

#ifdef APP_CENTER
#import <Foundation/Foundation.h>

@interface Secrets: NSObject @end
@implementation Secrets
+ (NSString *)appCenter {
#define AppCenter @ STRINGIFY(APP_CENTER)
    return AppCenter;
}
@end

#endif

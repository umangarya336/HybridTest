#import "HybridUFlutterPlugin.h"
#if __has_include(<HybridTest/HybridTest-Swift.h>)
#import <HybridTest/HybridTest-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
//#import "PayUTest.h"
//#import <PayUTest/SwiftHybridUFlutterPlugin>
#import "HybridTest-Swift.h"
#endif

@implementation HybridUFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHybridUFlutterPlugin registerWithRegistrar:registrar];
}
@end

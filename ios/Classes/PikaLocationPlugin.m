#import "PikaLocationPlugin.h"
#if __has_include(<pika_location/pika_location-Swift.h>)
#import <pika_location/pika_location-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "pika_location-Swift.h"
#endif

@implementation PikaLocationPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPikaLocationPlugin registerWithRegistrar:registrar];
}
@end

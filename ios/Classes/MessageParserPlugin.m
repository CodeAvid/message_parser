#import "MessageParserPlugin.h"
#if __has_include(<message_parser/message_parser-Swift.h>)
#import <message_parser/message_parser-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "message_parser-Swift.h"
#endif

@implementation MessageParserPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMessageParserPlugin registerWithRegistrar:registrar];
}
@end

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../demo/mobilighter/android/com/vals/a2ios/mobilighter/intf/Mobilighter.java
//

#include "J2ObjC_source.h"
#include "com/vals/a2ios/mobilighter/intf/MobilAction.h"
#include "com/vals/a2ios/mobilighter/intf/Mobilighter.h"

@interface Mobilighter : NSObject

@end

@interface Mobilighter_Navigator : NSObject

@end

@implementation Mobilighter

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setContextWithId:", "setContext", "V", 0x401, NULL, NULL },
    { "showOkDialogWithNSString:withNSString:", "showOkDialog", "V", 0x401, NULL, NULL },
    { "showOkDialogWithNSString:withNSString:withMobilAction:", "showOkDialog", "V", 0x401, NULL, NULL },
    { "showConfirmDialogWithNSString:withNSString:withMobilAction:withMobilAction:", "showConfirmDialog", "V", 0x401, NULL, NULL },
    { "setPlaceholderWithId:withNSString:", "setPlaceholder", "V", 0x401, NULL, NULL },
    { "setTextWithId:withNSString:", "setText", "V", 0x401, NULL, NULL },
    { "getTextWithId:", "getText", "Ljava.lang.String;", 0x401, NULL, NULL },
    { "hideWithId:", "hide", "V", 0x401, NULL, NULL },
    { "showWithId:", "show", "V", 0x401, NULL, NULL },
    { "addActionListenerWithId:withMobilAction:", "addActionListener", "V", 0x401, NULL, NULL },
    { "dateToStringWithId:withNSString:", "dateToString", "Ljava.lang.String;", 0x401, NULL, NULL },
  };
  static const char *inner_classes[] = {"Lcom.vals.a2ios.mobilighter.intf.Mobilighter$Navigator;"};
  static const J2ObjcClassInfo _Mobilighter = { 2, "Mobilighter", "com.vals.a2ios.mobilighter.intf", NULL, 0x609, 11, methods, 0, NULL, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_Mobilighter;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(Mobilighter)

@implementation Mobilighter_Navigator

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "navigateToScreenWithNSString:withId:", "navigateToScreen", "V", 0x401, NULL, NULL },
    { "cleanParameters", NULL, "V", 0x401, NULL, NULL },
    { "setStringWithNSString:withNSString:", "setString", "V", 0x401, NULL, NULL },
    { "getStringWithNSString:", "getString", "Ljava.lang.String;", 0x401, NULL, NULL },
    { "setObjectWithNSString:withId:", "setObject", "V", 0x401, NULL, NULL },
    { "getObjectWithNSString:", "getObject", "Ljava.lang.Object;", 0x401, NULL, NULL },
    { "setObjectWithId:", "setObject", "V", 0x401, NULL, NULL },
    { "getObject", NULL, "Ljava.lang.Object;", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _Mobilighter_Navigator = { 2, "Navigator", "com.vals.a2ios.mobilighter.intf", "Mobilighter", 0x609, 8, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_Mobilighter_Navigator;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(Mobilighter_Navigator)

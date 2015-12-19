//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../android//com/vals/a2ios/amfibian/impl/AnAttrib.java
//

#ifndef _ComValsA2iosAmfibianImplAnAttrib_H_
#define _ComValsA2iosAmfibianImplAnAttrib_H_

#include "J2ObjC_header.h"

@class ComValsA2iosAmfibianImplAnObject;
@class IOSClass;
@class JavaLangReflectMethod;
@protocol ComValsA2iosAmfibianImplAnAttrib_CustomConverter;

@interface ComValsA2iosAmfibianImplAnAttrib : NSObject {
 @public
  NSString *defaultConverterKey_;
  NSString *defaultGetConverterKey_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)attribColumnJsonName;

- (instancetype)initWithNSString:(NSString *)attribName
                    withNSString:(NSString *)columnName
                    withNSString:(NSString *)jsonName;

- (void)clearCustomGetConverters;

- (void)clearCustomSetConverters;

- (IOSClass *)getAttribClass;

- (NSString *)getAttribName;

- (NSString *)getColumnName;

- (NSString *)getColumnOrAttribName;

- (id<ComValsA2iosAmfibianImplAnAttrib_CustomConverter>)getCustomGetConverter;

- (id<ComValsA2iosAmfibianImplAnAttrib_CustomConverter>)getCustomGetConverterWithNSString:(NSString *)key;

- (id<ComValsA2iosAmfibianImplAnAttrib_CustomConverter>)getCustomSetConverter;

- (id<ComValsA2iosAmfibianImplAnAttrib_CustomConverter>)getCustomSetConverterWithNSString:(NSString *)key;

- (JavaLangReflectMethod *)getGetter;

- (NSString *)getJsonOrAttribName;

- (JavaLangReflectMethod *)getSetter;

- (id)getValue;

- (void)setAnObjectWithComValsA2iosAmfibianImplAnObject:(ComValsA2iosAmfibianImplAnObject *)anObject;

- (void)setAttribNameWithNSString:(NSString *)attribName;

- (void)setColumnNameWithNSString:(NSString *)columnName;

- (void)setCustomGetConverterWithComValsA2iosAmfibianImplAnAttrib_CustomConverter:(id<ComValsA2iosAmfibianImplAnAttrib_CustomConverter>)converter;

- (void)setCustomGetConverterWithNSString:(NSString *)key
withComValsA2iosAmfibianImplAnAttrib_CustomConverter:(id<ComValsA2iosAmfibianImplAnAttrib_CustomConverter>)converter;

- (void)setCustomSetConverterWithComValsA2iosAmfibianImplAnAttrib_CustomConverter:(id<ComValsA2iosAmfibianImplAnAttrib_CustomConverter>)converter;

- (void)setCustomSetConverterWithNSString:(NSString *)key
withComValsA2iosAmfibianImplAnAttrib_CustomConverter:(id<ComValsA2iosAmfibianImplAnAttrib_CustomConverter>)converter;

- (void)setDefaultGetConversionKeyWithNSString:(NSString *)key;

- (void)setDefaultSetConversionKeyWithNSString:(NSString *)key;

- (void)setValueWithId:(id)value;

@end

J2OBJC_EMPTY_STATIC_INIT(ComValsA2iosAmfibianImplAnAttrib)

J2OBJC_FIELD_SETTER(ComValsA2iosAmfibianImplAnAttrib, defaultConverterKey_, NSString *)
J2OBJC_FIELD_SETTER(ComValsA2iosAmfibianImplAnAttrib, defaultGetConverterKey_, NSString *)

FOUNDATION_EXPORT NSString *ComValsA2iosAmfibianImplAnAttrib_NONAME_CONVERSION_KEY_;
J2OBJC_STATIC_FIELD_GETTER(ComValsA2iosAmfibianImplAnAttrib, NONAME_CONVERSION_KEY_, NSString *)

FOUNDATION_EXPORT void ComValsA2iosAmfibianImplAnAttrib_initWithNSString_withNSString_withNSString_(ComValsA2iosAmfibianImplAnAttrib *self, NSString *attribName, NSString *columnName, NSString *jsonName);

FOUNDATION_EXPORT ComValsA2iosAmfibianImplAnAttrib *new_ComValsA2iosAmfibianImplAnAttrib_initWithNSString_withNSString_withNSString_(NSString *attribName, NSString *columnName, NSString *jsonName) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComValsA2iosAmfibianImplAnAttrib_initWithNSString_(ComValsA2iosAmfibianImplAnAttrib *self, NSString *attribColumnJsonName);

FOUNDATION_EXPORT ComValsA2iosAmfibianImplAnAttrib *new_ComValsA2iosAmfibianImplAnAttrib_initWithNSString_(NSString *attribColumnJsonName) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComValsA2iosAmfibianImplAnAttrib)

@protocol ComValsA2iosAmfibianImplAnAttrib_CustomConverter < NSObject, JavaObject >

- (id)convertWithId:(id)value;

@end

J2OBJC_EMPTY_STATIC_INIT(ComValsA2iosAmfibianImplAnAttrib_CustomConverter)

J2OBJC_TYPE_LITERAL_HEADER(ComValsA2iosAmfibianImplAnAttrib_CustomConverter)

#endif // _ComValsA2iosAmfibianImplAnAttrib_H_

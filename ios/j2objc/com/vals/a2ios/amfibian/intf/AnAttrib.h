//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../android//com/vals/a2ios/amfibian/intf/AnAttrib.java
//

#ifndef _ComValsA2iosAmfibianIntfAnAttrib_H_
#define _ComValsA2iosAmfibianIntfAnAttrib_H_

#include "J2ObjC_header.h"

@class IOSClass;
@class JavaLangReflectMethod;
@protocol AnAttrib_CustomConverter;
@protocol AnObject;

@protocol AnAttrib < NSObject, JavaObject >

- (void)setAnObjectWithAnObject:(id<AnObject>)anObject;

- (NSString *)getAttribName;

- (void)setAttribNameWithNSString:(NSString *)attribName;

- (NSString *)getJsonName;

- (NSString *)getColumnName;

- (void)setColumnNameWithNSString:(NSString *)columnName;

- (void)setValueWithId:(id)value;

- (id)getValue;

- (JavaLangReflectMethod *)getGetter;

- (JavaLangReflectMethod *)getSetter;

- (IOSClass *)getAttribClass;

- (void)setDbColumnDefinitionWithNSString:(NSString *)dbColumnDefinition;

- (NSString *)getDbColumnDefinition;

- (void)setCustomSetConverterWithAnAttrib_CustomConverter:(id<AnAttrib_CustomConverter>)converter;

- (id<AnAttrib_CustomConverter>)getCustomSetConverter;

- (void)setCustomGetConverterWithAnAttrib_CustomConverter:(id<AnAttrib_CustomConverter>)converter;

- (id<AnAttrib_CustomConverter>)getCustomGetConverter;

@end

J2OBJC_EMPTY_STATIC_INIT(AnAttrib)

J2OBJC_TYPE_LITERAL_HEADER(AnAttrib)

#define ComValsA2iosAmfibianIntfAnAttrib AnAttrib

@protocol AnAttrib_CustomConverter < NSObject, JavaObject >

- (id)convertWithAnAttrib:(id<AnAttrib>)attrib
                   withId:(id)value;

- (void)onWarningWithIOSClass:(IOSClass *)cluss
                 withNSString:(NSString *)attribName
                       withId:(id)value;

@end

J2OBJC_EMPTY_STATIC_INIT(AnAttrib_CustomConverter)

J2OBJC_TYPE_LITERAL_HEADER(AnAttrib_CustomConverter)

#endif // _ComValsA2iosAmfibianIntfAnAttrib_H_

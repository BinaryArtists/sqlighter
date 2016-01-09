//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../android//com/vals/a2ios/amfibian/impl/AnSqlImpl.java
//

#ifndef _ComValsA2iosAmfibianImplAnSqlImpl_H_
#define _ComValsA2iosAmfibianImplAnSqlImpl_H_

#include "J2ObjC_header.h"
#include "com/vals/a2ios/amfibian/impl/AnObjectImpl.h"
#include "com/vals/a2ios/amfibian/intf/AnSql.h"

@class IOSClass;
@class IOSObjectArray;
@protocol AnAttrib;
@protocol AnObject;
@protocol JavaUtilList;
@protocol JavaUtilSet;

#define AnSqlImpl_TYPE_SELECT 1
#define AnSqlImpl_TYPE_UPDATE 2
#define AnSqlImpl_TYPE_INSERT 3
#define AnSqlImpl_TYPE_CREATE 4
#define AnSqlImpl_TYPE_DELETE 5

@interface AnSqlImpl : AnObjectImpl < AnSql > {
 @public
  NSString *tableName_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)tableName
                    withIOSClass:(IOSClass *)anObjClass
               withAnAttribArray:(IOSObjectArray *)attribList
                    withAnObject:(id<AnObject>)parentAnObject;

- (instancetype)initWithNSString:(NSString *)tableName
                    withIOSClass:(IOSClass *)anObjClass
               withNSStringArray:(IOSObjectArray *)attribColumnList
                    withAnObject:(id<AnObject>)parentAnObject;

- (void)addInclAttribsWithNSStringArray:(IOSObjectArray *)names;

- (void)addSkipAttribsWithNSStringArray:(IOSObjectArray *)names;

- (void)addSqlWithNSString:(NSString *)sql;

- (void)addWhereWithNSString:(NSString *)condition;

- (void)addWhereWithNSString:(NSString *)condition
                      withId:(id)param;

- (NSString *)getAliasedColumnWithNSString:(NSString *)columnName;

- (id<JavaUtilList>)getAttribNameList;

- (NSString *)getColumnNameWithAnAttrib:(id<AnAttrib>)attrib;

- (id<JavaUtilList>)getParameters;

- (NSString *)getQueryString;

- (id<JavaUtilSet>)getSkipAttrNameList;

- (NSString *)getSqlTypeForClassWithIOSClass:(IOSClass *)columnJavaClass;

- (NSString *)getTableName;

- (jint)getType;

- (void)resetSkipInclAttrNameList;

- (void)setTableNameWithNSString:(NSString *)tableName;

- (void)setTypeWithInt:(jint)type;

- (id<AnSql>)startSqlCreate;

- (void)startSqlDelete;

- (void)startSqlInsertWithId:(id)objectToInsert;

- (void)startSqlSelect;

- (void)startSqlUpdateWithId:(id)objectToUpdate;

#pragma mark Protected

- (instancetype)init;

- (jboolean)isSkipAttrWithNSString:(NSString *)propertyName;

@end

J2OBJC_EMPTY_STATIC_INIT(AnSqlImpl)

J2OBJC_FIELD_SETTER(AnSqlImpl, tableName_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(AnSqlImpl, TYPE_SELECT, jint)

J2OBJC_STATIC_FIELD_GETTER(AnSqlImpl, TYPE_UPDATE, jint)

J2OBJC_STATIC_FIELD_GETTER(AnSqlImpl, TYPE_INSERT, jint)

J2OBJC_STATIC_FIELD_GETTER(AnSqlImpl, TYPE_CREATE, jint)

J2OBJC_STATIC_FIELD_GETTER(AnSqlImpl, TYPE_DELETE, jint)

FOUNDATION_EXPORT void AnSqlImpl_initWithNSString_withIOSClass_withAnAttribArray_withAnObject_(AnSqlImpl *self, NSString *tableName, IOSClass *anObjClass, IOSObjectArray *attribList, id<AnObject> parentAnObject);

FOUNDATION_EXPORT AnSqlImpl *new_AnSqlImpl_initWithNSString_withIOSClass_withAnAttribArray_withAnObject_(NSString *tableName, IOSClass *anObjClass, IOSObjectArray *attribList, id<AnObject> parentAnObject) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void AnSqlImpl_initWithNSString_withIOSClass_withNSStringArray_withAnObject_(AnSqlImpl *self, NSString *tableName, IOSClass *anObjClass, IOSObjectArray *attribColumnList, id<AnObject> parentAnObject);

FOUNDATION_EXPORT AnSqlImpl *new_AnSqlImpl_initWithNSString_withIOSClass_withNSStringArray_withAnObject_(NSString *tableName, IOSClass *anObjClass, IOSObjectArray *attribColumnList, id<AnObject> parentAnObject) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void AnSqlImpl_init(AnSqlImpl *self);

FOUNDATION_EXPORT AnSqlImpl *new_AnSqlImpl_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AnSqlImpl)

@compatibility_alias ComValsA2iosAmfibianImplAnSqlImpl AnSqlImpl;

#endif // _ComValsA2iosAmfibianImplAnSqlImpl_H_

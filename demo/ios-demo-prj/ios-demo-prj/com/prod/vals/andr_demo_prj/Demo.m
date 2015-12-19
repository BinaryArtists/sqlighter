//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../demo/andr-demo-prj/app/src/main/java/com/prod/vals/andr_demo_prj/Demo.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/prod/vals/andr_demo_prj/Appointment.h"
#include "com/prod/vals/andr_demo_prj/Bootstrap.h"
#include "com/prod/vals/andr_demo_prj/Demo.h"
#include "com/prod/vals/andr_demo_prj/Entity.h"
#include "com/vals/a2ios/amfibian/impl/AnObject.h"
#include "com/vals/a2ios/amfibian/impl/AnOrm.h"
#include "com/vals/a2ios/amfibian/impl/AnSql.h"
#include "com/vals/a2ios/sqlighter/intf/SQLighterDb.h"
#include "com/vals/a2ios/sqlighter/intf/SQLighterRs.h"
#include "java/io/PrintStream.h"
#include "java/lang/Double.h"
#include "java/lang/Exception.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/System.h"
#include "java/lang/Throwable.h"
#include "java/util/Collection.h"
#include "java/util/Date.h"
#include "java/util/List.h"
#include "org/json/JSONObject.h"

__attribute__((unused)) static void Demo_printWithSQLighterRs_(id<SQLighterRs> rs);

__attribute__((unused)) static void Demo_printUserTableWithNSString_withSQLighterDb_(NSString *title, id<SQLighterDb> db);

__attribute__((unused)) static void Demo_printAppointmentsWithComValsA2iosAmfibianImplAnOrm_(ComValsA2iosAmfibianImplAnOrm *anOrm);

__attribute__((unused)) static void Demo_printWithJavaUtilCollection_(id<JavaUtilCollection> appointments);

__attribute__((unused)) static void Demo_printWithAppointment_(Appointment *appointment);

@implementation Demo

+ (NSString *)dbOperations {
  return Demo_dbOperations();
}

+ (NSString *)amfibianOperations {
  return Demo_amfibianOperations();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  Demo_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

@end

NSString *Demo_dbOperations() {
  Demo_initialize();
  NSString *greetingStr = nil;
  @try {
    id<SQLighterRs> rs = nil;
    id<SQLighterDb> db = [((Bootstrap *) nil_chk(Bootstrap_getInstance())) getSqLighterDb];
    Demo_printUserTableWithNSString_withSQLighterDb_(@"initial state ", db);
    [((id<SQLighterDb>) nil_chk(db)) addParamWithNSString:@"user name 5"];
    [db addParamWithNSString:@"qw@er.ty1"];
    NSString *dataStr = @"Hello, SQLighter!";
    IOSByteArray *data = [dataStr getBytes];
    [db addParamWithByteArray:data];
    [db addParamWithDouble:5.67];
    JavaLangLong *rowId = [db executeChangeWithNSString:@"insert into user( name, email, data, height) values (?, ?, ?, ?)"];
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out_))) printlnWithNSString:JreStrcat("$@", @"Inserted id: ", rowId)];
    [db addParamWithNSString:@"qw@er.ty1"];
    [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:@"check if the record was inserted"];
    rs = [db executeSelectWithNSString:@"select id, email, name, data, height from user where email = ?"];
    while ([((id<SQLighterRs>) nil_chk(rs)) hasNext]) {
      Demo_printWithSQLighterRs_(rs);
    }
    [rs close];
    [db addParamNull];
    [db addParamWithNSString:@"qw@er.ty1"];
    JavaLangLong *alteredRows = [db executeChangeWithNSString:@"update user set email = ? where email = ?"];
    [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:JreStrcat("$@", @"Updated rows: ", alteredRows)];
    Demo_printUserTableWithNSString_withSQLighterDb_(@"after update state 1 ", db);
    [db addParamWithNSString:@"user@email.com"];
    [db addParamWithNSString:@"qw@er.ty1"];
    (void) [db executeChangeWithNSString:@"update user set email = ? where email is null or email = ?"];
    [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:@"after update state 2"];
    rs = [db executeSelectWithNSString:@"select id, email, name, data, height from user"];
    while ([((id<SQLighterRs>) nil_chk(rs)) hasNext]) {
      Demo_printWithSQLighterRs_(rs);
      NSString *s = [rs getStringWithInt:1];
      if (![@"user@email.com" isEqual:s]) {
        NSNumber *id_ = [rs getLongWithInt:0];
        [db addParamWithNSString:@"inloop@email.com"];
        [db addParamWithLong:[((NSNumber *) nil_chk(id_)) longLongValue]];
        (void) [db executeChangeWithNSString:@"update user set email = ? where id = ?"];
      }
    }
    [rs close];
    [db addParamWithLong:2];
    alteredRows = [db executeChangeWithNSString:@"delete from user where id = ?"];
    [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:JreStrcat("$@", @"Deleted rows: ", alteredRows)];
    Demo_printUserTableWithNSString_withSQLighterDb_(@"after delete state", db);
    (void) [db executeChangeWithNSString:@"create table address(id integer primary key autoincrement unique, name text, user_id integer, update_date text)"];
    [db addParamWithNSString:@"123 main str, walnut creek, ca"];
    [db addParamWithLong:1];
    JavaUtilDate *dateNow = new_JavaUtilDate_init();
    [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:JreStrcat("$$", @"Date now: ", [dateNow description])];
    [db addParamWithJavaUtilDate:new_JavaUtilDate_init()];
    (void) [db executeChangeWithNSString:@"insert into address(name, user_id, update_date) values(?, ?, ?)"];
    [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:@"after address creation/population"];
    rs = [db executeSelectWithNSString:@"select a.user_id, u.email, u.name, u.data, u.height, a.name, a.update_date from user u, address a where a.user_id = u.id"];
    while ([((id<SQLighterRs>) nil_chk(rs)) hasNext]) {
      Demo_printWithSQLighterRs_(rs);
      [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:JreStrcat("$$", @" address: ", [rs getStringWithInt:5])];
      [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:JreStrcat("$@", @" update_date: ", [rs getDateWithInt:6])];
      [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:JreStrcat("$@", @" update_date: ", [rs getObjectWithInt:6])];
    }
    [rs close];
    @try {
      [db beginTransaction];
      [db addParamWithNSString:@"trans@email.com"];
      [db addParamWithNSString:@"inloop@email.com"];
      (void) [db executeChangeWithNSString:@"update user set email = ? where email = ?"];
      Demo_printUserTableWithNSString_withSQLighterDb_(@"inside transaction", db);
      [db addParamWithNSString:@"inloop2@email.com"];
      [db addParamWithNSString:@"trans@email.com"];
      (void) [db executeChangeWithNSString:@"updte user set email = ? where email = ?"];
      [db commitTransaction];
    }
    @catch (JavaLangThrowable *e) {
      [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:[((JavaLangThrowable *) nil_chk(e)) getMessage]];
      [db rollbackTransaction];
    }
    Demo_printUserTableWithNSString_withSQLighterDb_(@"after transaction commit or rollback", db);
    [db addParamWithDouble:5.67];
    rs = [db executeSelectWithNSString:@"select data from user where height = ?"];
    if ([((id<SQLighterRs>) nil_chk(rs)) hasNext]) {
      IOSByteArray *greet = [rs getBlobWithInt:0];
      greetingStr = [NSString stringWithBytes:greet];
    }
    [rs close];
  }
  @catch (JavaLangException *e) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out_))) printlnWithNSString:[((JavaLangException *) nil_chk(e)) getMessage]];
    return [e getMessage];
  }
  return greetingStr;
}

void Demo_printWithSQLighterRs_(id<SQLighterRs> rs) {
  Demo_initialize();
  JavaLangLong *pk = [((id<SQLighterRs>) nil_chk(rs)) getLongWithInt:0];
  NSString *e = [rs getStringWithInt:1];
  NSString *n = [rs getStringWithInt:2];
  IOSByteArray *dataBytes = [rs getBlobWithInt:3];
  NSString *dataString = nil;
  if (dataBytes != nil) {
    dataString = [NSString stringWithBytes:dataBytes];
  }
  NSNumber *h = [rs getDoubleWithInt:4];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out_))) printlnWithNSString:JreStrcat("$@$$$$$$$@", @"pk: ", pk, @", email: ", e, @", name: ", n, @", blob data: ", dataString, @", height: ", h)];
}

void Demo_printUserTableWithNSString_withSQLighterDb_(NSString *title, id<SQLighterDb> db) {
  Demo_initialize();
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out_))) printlnWithNSString:title];
  id<SQLighterRs> rs = [((id<SQLighterDb>) nil_chk(db)) executeSelectWithNSString:@"select id, email, name, data, height from user"];
  while ([((id<SQLighterRs>) nil_chk(rs)) hasNext]) {
    Demo_printWithSQLighterRs_(rs);
  }
  [rs close];
}

NSString *Demo_amfibianOperations() {
  Demo_initialize();
  @try {
    NSString *jsonAppointment = @"{id: \"234\", name: \"Meet Amfibian!\", isProcessed: \"0\"}";
    id<SQLighterDb> sqlighterDb = [((Bootstrap *) nil_chk(Bootstrap_getInstance())) getSqLighterDb];
    ComValsA2iosAmfibianImplAnObject *anEntity = new_ComValsA2iosAmfibianImplAnObject_initWithIOSClass_withNSStringArray_(Entity_class_(), [IOSObjectArray newArrayWithObjects:(id[]){ @"id" } count:1 type:NSString_class_()]);
    ComValsA2iosAmfibianImplAnOrm *anAppointment = new_ComValsA2iosAmfibianImplAnOrm_initWithSQLighterDb_withNSString_withIOSClass_withNSStringArray_withComValsA2iosAmfibianImplAnObject_(sqlighterDb, @"appointment234", Appointment_class_(), [IOSObjectArray newArrayWithObjects:(id[]){ @"name", @"isProcessed,is_processed" } count:2 type:NSString_class_()], anEntity);
    Appointment *appointment234 = [anAppointment fromJsonStringWithNSString:jsonAppointment];
    NSString *createAppointmentTableSql = [((ComValsA2iosAmfibianImplAnSql *) nil_chk([anAppointment startSqlCreate])) getQueryString];
    (void) [((id<SQLighterDb>) nil_chk(sqlighterDb)) executeChangeWithNSString:createAppointmentTableSql];
    [anAppointment startSqlInsertWithId:appointment234];
    (void) [anAppointment apply];
    Demo_printAppointmentsWithComValsA2iosAmfibianImplAnOrm_(anAppointment);
    Appointment *appointment456 = new_Appointment_init();
    [appointment456 setNameWithNSString:@"Appointment #98"];
    [appointment456 setIsProcessedWithJavaLangInteger:JavaLangInteger_valueOfWithInt_(0)];
    [appointment456 setIdWithJavaLangInteger:JavaLangInteger_valueOfWithInt_(456)];
    [anAppointment startSqlInsertWithId:appointment456];
    (void) [anAppointment apply];
    Demo_printAppointmentsWithComValsA2iosAmfibianImplAnOrm_(anAppointment);
    [((Appointment *) nil_chk(appointment234)) setIsProcessedWithJavaLangInteger:JavaLangInteger_valueOfWithInt_(1)];
    [anAppointment startSqlUpdateWithId:appointment234];
    [anAppointment addWhereWithNSString:@"id = ?" withId:[appointment234 getId]];
    (void) [anAppointment apply];
    Demo_printAppointmentsWithComValsA2iosAmfibianImplAnOrm_(anAppointment);
    [anAppointment startSqlSelect];
    [anAppointment addWhereWithNSString:@"and id = ?" withId:JavaLangInteger_valueOfWithInt_(234)];
    id<JavaUtilList> list = [anAppointment getRecords];
    if ([((id<JavaUtilList>) nil_chk(list)) size] == 1) {
      Appointment *meetAmfibian;
      meetAmfibian = [list getWithInt:0];
      [anAppointment setNativeObjectWithId:meetAmfibian];
      OrgJsonJSONObject *jsonObject = [anAppointment getJSONObject];
      NSString *jsonString = [anAppointment toJsonString];
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out_))) printlnWithNSString:JreStrcat("$$", @"Json string: ", jsonString)];
      return (NSString *) check_class_cast([((OrgJsonJSONObject *) nil_chk(jsonObject)) getWithNSString:@"name"], [NSString class]);
    }
  }
  @catch (JavaLangException *e) {
    return [((JavaLangException *) nil_chk(e)) getMessage];
  }
  return nil;
}

void Demo_printAppointmentsWithComValsA2iosAmfibianImplAnOrm_(ComValsA2iosAmfibianImplAnOrm *anOrm) {
  Demo_initialize();
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out_))) printlnWithNSString:@"Appointment records"];
  [((ComValsA2iosAmfibianImplAnOrm *) nil_chk(anOrm)) startSqlSelect];
  Demo_printWithJavaUtilCollection_([anOrm getRecords]);
}

void Demo_printWithJavaUtilCollection_(id<JavaUtilCollection> appointments) {
  Demo_initialize();
  for (Appointment * __strong a in nil_chk(appointments)) {
    Demo_printWithAppointment_(a);
  }
}

void Demo_printWithAppointment_(Appointment *appointment) {
  Demo_initialize();
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out_))) printlnWithNSString:JreStrcat("$@$$", @"Appointment object. id: ", [((Appointment *) nil_chk(appointment)) getId], @", name: ", [appointment getName])];
}

void Demo_init(Demo *self) {
  (void) NSObject_init(self);
}

Demo *new_Demo_init() {
  Demo *self = [Demo alloc];
  Demo_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(Demo)

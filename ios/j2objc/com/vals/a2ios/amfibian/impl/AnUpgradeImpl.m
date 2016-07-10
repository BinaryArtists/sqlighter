//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../android//com/vals/a2ios/amfibian/impl/AnUpgradeImpl.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/vals/a2ios/amfibian/impl/AnOrmImpl.h"
#include "com/vals/a2ios/amfibian/impl/AnUpgradeImpl.h"
#include "com/vals/a2ios/amfibian/intf/AnSql.h"
#include "com/vals/a2ios/amfibian/intf/AnUpgrade.h"
#include "com/vals/a2ios/sqlighter/intf/SQLighterDb.h"
#include "com/vals/a2ios/sqlighter/intf/SQLighterRs.h"
#include "java/io/PrintStream.h"
#include "java/lang/Double.h"
#include "java/lang/Exception.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/System.h"
#include "java/lang/Throwable.h"
#include "java/util/Arrays.h"
#include "java/util/Date.h"
#include "java/util/HashSet.h"
#include "java/util/LinkedList.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"

#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface AnUpgradeImpl () {
 @public
  id<JavaUtilMap> map_;
  NSString *recoverKey_;
  NSString *logTableName_;
  id<JavaUtilList> delayedLogs_;
}

- (jint)applyUpdatesWithInt:(jint)privatePublic;

- (jint)attemptToRecoverWithInt:(jint)privatePublic;

- (void)logUpgradeStepWithNSString:(NSString *)key
                      withNSString:(NSString *)sqlStr
                  withJavaLangLong:(JavaLangLong *)result;

- (void)logKeyWithNSString:(NSString *)key
              withNSString:(NSString *)message
       withJavaLangInteger:(JavaLangInteger *)status;

- (void)saveLogWithAnUpgradeImpl_Upgrade:(AnUpgradeImpl_Upgrade *)appUpdateEntry;

- (jboolean)findTableWithNSString:(NSString *)searchTableName;

- (id<JavaUtilList>)getPrivateUpdateKeys;

@end

J2OBJC_FIELD_SETTER(AnUpgradeImpl, map_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(AnUpgradeImpl, recoverKey_, NSString *)
J2OBJC_FIELD_SETTER(AnUpgradeImpl, logTableName_, NSString *)
J2OBJC_FIELD_SETTER(AnUpgradeImpl, delayedLogs_, id<JavaUtilList>)

static NSString *AnUpgradeImpl_PRIVATE_PREFIX_ = @"an-upg-";
J2OBJC_STATIC_FIELD_GETTER(AnUpgradeImpl, PRIVATE_PREFIX_, NSString *)

static NSString *AnUpgradeImpl_PRIVATE_REC_KEY_ = @"an-upg-recoveryKey";
J2OBJC_STATIC_FIELD_GETTER(AnUpgradeImpl, PRIVATE_REC_KEY_, NSString *)

static NSString *AnUpgradeImpl_PRIVATE_KEY1_ = @"an-upg-init-1";
J2OBJC_STATIC_FIELD_GETTER(AnUpgradeImpl, PRIVATE_KEY1_, NSString *)

__attribute__((unused)) static jint AnUpgradeImpl_applyUpdatesWithInt_(AnUpgradeImpl *self, jint privatePublic);

__attribute__((unused)) static jint AnUpgradeImpl_attemptToRecoverWithInt_(AnUpgradeImpl *self, jint privatePublic);

__attribute__((unused)) static void AnUpgradeImpl_logUpgradeStepWithNSString_withNSString_withJavaLangLong_(AnUpgradeImpl *self, NSString *key, NSString *sqlStr, JavaLangLong *result);

__attribute__((unused)) static void AnUpgradeImpl_logKeyWithNSString_withNSString_withJavaLangInteger_(AnUpgradeImpl *self, NSString *key, NSString *message, JavaLangInteger *status);

__attribute__((unused)) static void AnUpgradeImpl_saveLogWithAnUpgradeImpl_Upgrade_(AnUpgradeImpl *self, AnUpgradeImpl_Upgrade *appUpdateEntry);

__attribute__((unused)) static jboolean AnUpgradeImpl_findTableWithNSString_(AnUpgradeImpl *self, NSString *searchTableName);

__attribute__((unused)) static id<JavaUtilList> AnUpgradeImpl_getPrivateUpdateKeys(AnUpgradeImpl *self);

@interface AnUpgradeImpl_Upgrade () {
 @public
  NSString *key_;
  NSString *value_;
  JavaUtilDate *createDate_;
  JavaLangInteger *status_;
  JavaLangInteger *type_;
  JavaLangInteger *refi_;
  JavaLangDouble *refd_;
  JavaLangInteger *refs_;
}

@end

J2OBJC_FIELD_SETTER(AnUpgradeImpl_Upgrade, key_, NSString *)
J2OBJC_FIELD_SETTER(AnUpgradeImpl_Upgrade, value_, NSString *)
J2OBJC_FIELD_SETTER(AnUpgradeImpl_Upgrade, createDate_, JavaUtilDate *)
J2OBJC_FIELD_SETTER(AnUpgradeImpl_Upgrade, status_, JavaLangInteger *)
J2OBJC_FIELD_SETTER(AnUpgradeImpl_Upgrade, type_, JavaLangInteger *)
J2OBJC_FIELD_SETTER(AnUpgradeImpl_Upgrade, refi_, JavaLangInteger *)
J2OBJC_FIELD_SETTER(AnUpgradeImpl_Upgrade, refd_, JavaLangDouble *)
J2OBJC_FIELD_SETTER(AnUpgradeImpl_Upgrade, refs_, JavaLangInteger *)

@implementation AnUpgradeImpl

- (instancetype)initWithSQLighterDb:(id<SQLighterDb>)sqLighterDb
                       withNSString:(NSString *)tableName
                       withNSString:(NSString *)recoveryKey {
  AnUpgradeImpl_initWithSQLighterDb_withNSString_withNSString_(self, sqLighterDb, tableName, recoveryKey);
  return self;
}

- (instancetype)initWithSQLighterDb:(id<SQLighterDb>)sqLighterDb {
  AnUpgradeImpl_initWithSQLighterDb_(self, sqLighterDb);
  return self;
}

- (NSString *)getLogTableName {
  return logTableName_;
}

- (void)setLogTableNameWithNSString:(NSString *)logTableName {
  self->logTableName_ = logTableName;
}

- (id<JavaUtilSet>)getAppliedUpdates {
  id<JavaUtilSet> keys = new_JavaUtilHashSet_init();
  if (!AnUpgradeImpl_findTableWithNSString_(self, [self getLogTableName])) {
    return keys;
  }
  id<SQLighterRs> rs = [((id<SQLighterDb>) nil_chk(sqlighterDb_)) executeSelectWithNSString:JreStrcat("$$$", @"select key from ", AnUpgrade_TABLE_NAME_, @" where type = 0")];
  while ([((id<SQLighterRs>) nil_chk(rs)) hasNext]) {
    NSString *key = [rs getStringWithInt:0];
    [keys addWithId:key];
  }
  [rs close];
  return keys;
}

- (jint)applyUpdates {
  if (!AnUpgradeImpl_findTableWithNSString_(self, [self getLogTableName])) {
    jint returnCode = AnUpgradeImpl_attemptToRecoverWithInt_(self, 0);
    if (returnCode == -1) {
      return returnCode;
    }
  }
  jint taskCount = AnUpgradeImpl_applyUpdatesWithInt_(self, 0);
  if (taskCount == -1) {
    return taskCount;
  }
  taskCount = AnUpgradeImpl_applyUpdatesWithInt_(self, 1);
  return taskCount;
}

- (jint)applyUpdatesWithInt:(jint)privatePublic {
  return AnUpgradeImpl_applyUpdatesWithInt_(self, privatePublic);
}

- (jboolean)applyUpdateWithNSString:(NSString *)key
                   withJavaUtilList:(id<JavaUtilList>)statementList {
  @try {
    for (id __strong task in nil_chk(statementList)) {
      NSString *sqlStr = nil;
      JavaLangLong *result = nil;
      if ([task isKindOfClass:[NSString class]]) {
        sqlStr = (NSString *) check_class_cast(task, [NSString class]);
        result = [((id<SQLighterDb>) nil_chk(sqlighterDb_)) executeChangeWithNSString:sqlStr];
      }
      else if ([AnSql_class_() isInstance:task]) {
        AnOrmImpl *createObjectTask = (AnOrmImpl *) check_class_cast(task, [AnOrmImpl class]);
        [((AnOrmImpl *) nil_chk(createObjectTask)) setSqlighterDbWithSQLighterDb:sqlighterDb_];
        (void) [createObjectTask startSqlCreate];
        sqlStr = [createObjectTask getQueryString];
        NSString *dropTableQuery = JreStrcat("$$", @"drop table if exists ", [createObjectTask getTableName]);
        (void) [((id<SQLighterDb>) nil_chk(sqlighterDb_)) executeChangeWithNSString:dropTableQuery];
        result = [createObjectTask apply];
      }
      AnUpgradeImpl_logUpgradeStepWithNSString_withNSString_withJavaLangLong_(self, key, sqlStr, result);
    }
    AnUpgradeImpl_logKeyWithNSString_withNSString_withJavaLangInteger_(self, key, nil, JavaLangInteger_valueOfWithInt_(1));
    return true;
  }
  @catch (JavaLangThrowable *t) {
    @try {
      AnUpgradeImpl_logKeyWithNSString_withNSString_withJavaLangInteger_(self, key, [((JavaLangThrowable *) nil_chk(t)) getMessage], JavaLangInteger_valueOfWithInt_(0));
    }
    @catch (JavaLangThrowable *failureMarkExcp) {
      [((JavaLangThrowable *) nil_chk(failureMarkExcp)) printStackTrace];
    }
    return false;
  }
}

- (jint)attemptToRecover {
  jint returnCode = AnUpgradeImpl_attemptToRecoverWithInt_(self, 0);
  if (returnCode == -1) {
    return returnCode;
  }
  returnCode = AnUpgradeImpl_attemptToRecoverWithInt_(self, 1);
  return returnCode;
}

- (jint)attemptToRecoverWithInt:(jint)privatePublic {
  return AnUpgradeImpl_attemptToRecoverWithInt_(self, privatePublic);
}

- (void)setRecoverKeyWithNSString:(NSString *)recoverKey {
  self->recoverKey_ = recoverKey;
}

- (void)logUpgradeStepWithNSString:(NSString *)key
                      withNSString:(NSString *)sqlStr
                  withJavaLangLong:(JavaLangLong *)result {
  AnUpgradeImpl_logUpgradeStepWithNSString_withNSString_withJavaLangLong_(self, key, sqlStr, result);
}

- (void)logKeyWithNSString:(NSString *)key
              withNSString:(NSString *)message
       withJavaLangInteger:(JavaLangInteger *)status {
  AnUpgradeImpl_logKeyWithNSString_withNSString_withJavaLangInteger_(self, key, message, status);
}

- (void)saveLogWithAnUpgradeImpl_Upgrade:(AnUpgradeImpl_Upgrade *)appUpdateEntry {
  AnUpgradeImpl_saveLogWithAnUpgradeImpl_Upgrade_(self, appUpdateEntry);
}

- (jboolean)findTableWithNSString:(NSString *)searchTableName {
  return AnUpgradeImpl_findTableWithNSString_(self, searchTableName);
}

- (id<JavaUtilList>)getPrivateUpdateKeys {
  return AnUpgradeImpl_getPrivateUpdateKeys(self);
}

- (id<JavaUtilList>)getPrivateTasksByKeyWithNSString:(NSString *)key {
  id<JavaUtilList> tasks = new_JavaUtilLinkedList_init();
  if ([((NSString *) nil_chk(AnUpgradeImpl_PRIVATE_REC_KEY_)) isEqual:key]) {
    [tasks addWithId:anOrm_];
    [tasks addWithId:JreStrcat("$$$$$", @"create index ", [self getLogTableName], @"_idx on ", [self getLogTableName], @"(key, type, status)")];
  }
  else if ([((NSString *) nil_chk(AnUpgradeImpl_PRIVATE_KEY1_)) isEqual:key]) {
    [tasks addWithId:JreStrcat("$$$", @"alter table ", [self getLogTableName], @" add column type INTEGER")];
    [tasks addWithId:JreStrcat("$$$", @"alter table ", [self getLogTableName], @" add column refi INTEGER")];
    [tasks addWithId:JreStrcat("$$$", @"alter table ", [self getLogTableName], @" add column refd REAL")];
    [tasks addWithId:JreStrcat("$$$", @"alter table ", [self getLogTableName], @" add column refs TEXT")];
    [tasks addWithId:JreStrcat("$$$$$", @"create index ", [self getLogTableName], @"_idx on ", [self getLogTableName], @"(key, type, status)")];
    [tasks addWithId:JreStrcat("$$$", @"update ", [self getLogTableName], @" set type = 0 where value is null")];
    [tasks addWithId:JreStrcat("$$$", @"update ", [self getLogTableName], @" set type = 1 where value is not null")];
  }
  return tasks;
}

@end

void AnUpgradeImpl_initWithSQLighterDb_withNSString_withNSString_(AnUpgradeImpl *self, id<SQLighterDb> sqLighterDb, NSString *tableName, NSString *recoveryKey) {
  (void) AnUpgradeImpl_initWithSQLighterDb_(self, sqLighterDb);
  self->logTableName_ = tableName;
  self->recoverKey_ = recoveryKey;
}

void AnUpgradeImpl_initWithSQLighterDb_(AnUpgradeImpl *self, id<SQLighterDb> sqLighterDb) {
  (void) NSObject_init(self);
  self->recoverKey_ = AnUpgrade_DB_RECOVER_KEY_;
  self->logTableName_ = AnUpgrade_TABLE_NAME_;
  self->delayedLogs_ = new_JavaUtilLinkedList_init();
  self->sqlighterDb_ = sqLighterDb;
  self->anOrm_ = new_AnOrmImpl_initWithSQLighterDb_withNSString_withIOSClass_withNSStringArray_withAnObject_(sqLighterDb, [self getLogTableName], AnUpgradeImpl_Upgrade_class_(), [IOSObjectArray newArrayWithObjects:(id[]){ @"key", @"value", @"createDate,create_date", @"status", @"type", @"refi", @"refd", @"refs" } count:8 type:NSString_class_()], nil);
}

jint AnUpgradeImpl_applyUpdatesWithInt_(AnUpgradeImpl *self, jint privatePublic) {
  jint taskCount = 0;
  id<JavaUtilSet> appliedKeys = [self getAppliedUpdates];
  id<JavaUtilList> keys = (privatePublic == 0) ? AnUpgradeImpl_getPrivateUpdateKeys(self) : [self getUpdateKeys];
  for (NSString * __strong updKey in keys) {
    if ([((NSString *) nil_chk(updKey)) isEqual:self->recoverKey_]) {
      continue;
    }
    if (![((id<JavaUtilSet>) nil_chk(appliedKeys)) containsWithId:updKey]) {
      id<JavaUtilList> tasks = (privatePublic == 0) ? [self getPrivateTasksByKeyWithNSString:updKey] : [self getTasksByKeyWithNSString:updKey];
      if (![self applyUpdateWithNSString:updKey withJavaUtilList:tasks]) {
        return -1;
      }
      taskCount++;
    }
  }
  return taskCount;
}

jint AnUpgradeImpl_attemptToRecoverWithInt_(AnUpgradeImpl *self, jint privatePublic) {
  id<JavaUtilList> recoverTasks = (privatePublic == 0) ? [self getPrivateTasksByKeyWithNSString:AnUpgradeImpl_PRIVATE_REC_KEY_] : [self getTasksByKeyWithNSString:self->recoverKey_];
  jint rc = 0;
  if ([recoverTasks size] > 0) {
    id<JavaUtilList> keys = (privatePublic == 0) ? AnUpgradeImpl_getPrivateUpdateKeys(self) : [self getUpdateKeys];
    for (NSString * __strong key in keys) {
      NSString *recKey = (privatePublic == 0) ? AnUpgradeImpl_PRIVATE_REC_KEY_ : self->recoverKey_;
      if ([((NSString *) nil_chk(key)) isEqual:recKey]) {
        jboolean result = [self applyUpdateWithNSString:key withJavaUtilList:recoverTasks];
        if (!result) {
          return -1;
        }
        rc++;
      }
      if (![key isEqual:self->recoverKey_]) {
        AnUpgradeImpl_logKeyWithNSString_withNSString_withJavaLangInteger_(self, key, nil, JavaLangInteger_valueOfWithInt_(0));
      }
    }
  }
  return rc;
}

void AnUpgradeImpl_logUpgradeStepWithNSString_withNSString_withJavaLangLong_(AnUpgradeImpl *self, NSString *key, NSString *sqlStr, JavaLangLong *result) {
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out_))) printlnWithNSString:JreStrcat("$@$$", @"result: ", result, @" for ", sqlStr)];
  AnUpgradeImpl_Upgrade *appUpdate = new_AnUpgradeImpl_Upgrade_init();
  [appUpdate setKeyWithNSString:key];
  [appUpdate setValueWithNSString:sqlStr];
  [appUpdate setCreateDateWithJavaUtilDate:new_JavaUtilDate_init()];
  [appUpdate setStatusWithJavaLangInteger:JavaLangInteger_valueOfWithInt_(1)];
  [appUpdate setTypeWithJavaLangInteger:JavaLangInteger_valueOfWithInt_(1)];
  AnUpgradeImpl_saveLogWithAnUpgradeImpl_Upgrade_(self, appUpdate);
}

void AnUpgradeImpl_logKeyWithNSString_withNSString_withJavaLangInteger_(AnUpgradeImpl *self, NSString *key, NSString *message, JavaLangInteger *status) {
  AnUpgradeImpl_Upgrade *appUpdateMark = new_AnUpgradeImpl_Upgrade_init();
  [appUpdateMark setKeyWithNSString:key];
  [appUpdateMark setStatusWithJavaLangInteger:status];
  [appUpdateMark setCreateDateWithJavaUtilDate:new_JavaUtilDate_init()];
  [appUpdateMark setTypeWithJavaLangInteger:JavaLangInteger_valueOfWithInt_(0)];
  if (message != nil) {
    [appUpdateMark setValueWithNSString:message];
  }
  AnUpgradeImpl_saveLogWithAnUpgradeImpl_Upgrade_(self, appUpdateMark);
}

void AnUpgradeImpl_saveLogWithAnUpgradeImpl_Upgrade_(AnUpgradeImpl *self, AnUpgradeImpl_Upgrade *appUpdateEntry) {
  if (!AnUpgradeImpl_findTableWithNSString_(self, [self getLogTableName])) {
    [((id<JavaUtilList>) nil_chk(self->delayedLogs_)) addWithId:appUpdateEntry];
  }
  else {
    for (AnUpgradeImpl_Upgrade * __strong upgradeLog in nil_chk(self->delayedLogs_)) {
      [((AnOrmImpl *) nil_chk(self->anOrm_)) startSqlInsertWithId:upgradeLog];
      (void) [self->anOrm_ apply];
    }
    [self->delayedLogs_ clear];
    [((AnOrmImpl *) nil_chk(self->anOrm_)) startSqlInsertWithId:appUpdateEntry];
    (void) [self->anOrm_ apply];
  }
}

jboolean AnUpgradeImpl_findTableWithNSString_(AnUpgradeImpl *self, NSString *searchTableName) {
  id<SQLighterRs> rs = [((id<SQLighterDb>) nil_chk(self->sqlighterDb_)) executeSelectWithNSString:@"SELECT name FROM sqlite_master WHERE type='table' ORDER BY name"];
  jboolean isFound = false;
  while ([((id<SQLighterRs>) nil_chk(rs)) hasNext]) {
    NSString *tableName = [rs getStringWithInt:0];
    if ([((NSString *) nil_chk(tableName)) isEqual:[self getLogTableName]]) {
      isFound = true;
      break;
    }
  }
  [rs close];
  return isFound;
}

id<JavaUtilList> AnUpgradeImpl_getPrivateUpdateKeys(AnUpgradeImpl *self) {
  return JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray newArrayWithObjects:(id[]){ AnUpgradeImpl_PRIVATE_KEY1_, AnUpgradeImpl_PRIVATE_REC_KEY_ } count:2 type:NSString_class_()]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AnUpgradeImpl)

@implementation AnUpgradeImpl_Upgrade

- (NSString *)getKey {
  return key_;
}

- (void)setKeyWithNSString:(NSString *)key {
  self->key_ = key;
}

- (NSString *)getValue {
  return value_;
}

- (void)setValueWithNSString:(NSString *)value {
  self->value_ = value;
}

- (JavaUtilDate *)getCreateDate {
  return createDate_;
}

- (void)setCreateDateWithJavaUtilDate:(JavaUtilDate *)createDate {
  self->createDate_ = createDate;
}

- (JavaLangInteger *)getStatus {
  return status_;
}

- (void)setStatusWithJavaLangInteger:(JavaLangInteger *)status {
  self->status_ = status;
}

- (JavaLangInteger *)getType {
  return type_;
}

- (void)setTypeWithJavaLangInteger:(JavaLangInteger *)type {
  self->type_ = type;
}

- (JavaLangInteger *)getRefi {
  return refi_;
}

- (void)setRefiWithJavaLangInteger:(JavaLangInteger *)refi {
  self->refi_ = refi;
}

- (JavaLangDouble *)getRefd {
  return refd_;
}

- (void)setRefdWithJavaLangDouble:(JavaLangDouble *)refd {
  self->refd_ = refd;
}

- (JavaLangInteger *)getRefs {
  return refs_;
}

- (void)setRefsWithJavaLangInteger:(JavaLangInteger *)refs {
  self->refs_ = refs;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AnUpgradeImpl_Upgrade_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

@end

void AnUpgradeImpl_Upgrade_init(AnUpgradeImpl_Upgrade *self) {
  (void) NSObject_init(self);
}

AnUpgradeImpl_Upgrade *new_AnUpgradeImpl_Upgrade_init() {
  AnUpgradeImpl_Upgrade *self = [AnUpgradeImpl_Upgrade alloc];
  AnUpgradeImpl_Upgrade_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AnUpgradeImpl_Upgrade)

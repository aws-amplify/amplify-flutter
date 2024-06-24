// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/tables.drift.dart'
    as i1;

abstract class $TransferDatabase extends i0.GeneratedDatabase {
  $TransferDatabase(i0.QueryExecutor e) : super(e);
  $TransferDatabaseManager get managers => $TransferDatabaseManager(this);
  late final i1.$TransferRecordsTable transferRecords =
      i1.$TransferRecordsTable(this);
  @override
  Iterable<i0.TableInfo<i0.Table, Object?>> get allTables =>
      allSchemaEntities.whereType<i0.TableInfo<i0.Table, Object?>>();
  @override
  List<i0.DatabaseSchemaEntity> get allSchemaEntities => [transferRecords];
}

class $TransferDatabaseManager {
  final $TransferDatabase _db;
  $TransferDatabaseManager(this._db);
  i1.$$TransferRecordsTableTableManager get transferRecords =>
      i1.$$TransferRecordsTableTableManager(_db, _db.transferRecords);
}

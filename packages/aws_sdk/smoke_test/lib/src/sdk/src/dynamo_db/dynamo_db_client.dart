// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.dynamo_db_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i104;
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i113;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_execute_statement_input.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_execute_statement_output.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_get_item_input.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_get_item_output.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_write_item_input.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_write_item_output.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_backup_input.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_backup_output.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_global_table_input.dart'
    as _i17;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_global_table_output.dart'
    as _i16;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_table_input.dart'
    as _i20;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_table_output.dart'
    as _i19;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_backup_input.dart'
    as _i23;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_backup_output.dart'
    as _i22;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_item_input.dart'
    as _i26;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_item_output.dart'
    as _i25;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_table_input.dart'
    as _i29;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_table_output.dart'
    as _i28;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_backup_input.dart'
    as _i32;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_backup_output.dart'
    as _i31;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_continuous_backups_input.dart'
    as _i35;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_continuous_backups_output.dart'
    as _i34;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_contributor_insights_input.dart'
    as _i38;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_contributor_insights_output.dart'
    as _i37;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_endpoints_request.dart'
    as _i41;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_endpoints_response.dart'
    as _i40;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_export_input.dart'
    as _i44;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_export_output.dart'
    as _i43;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_global_table_input.dart'
    as _i47;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_global_table_output.dart'
    as _i46;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_global_table_settings_input.dart'
    as _i50;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_global_table_settings_output.dart'
    as _i49;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_import_input.dart'
    as _i53;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_import_output.dart'
    as _i52;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_kinesis_streaming_destination_input.dart'
    as _i56;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_kinesis_streaming_destination_output.dart'
    as _i55;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_limits_input.dart'
    as _i59;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_limits_output.dart'
    as _i58;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_table_input.dart'
    as _i62;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_table_output.dart'
    as _i61;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_table_replica_auto_scaling_input.dart'
    as _i65;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_table_replica_auto_scaling_output.dart'
    as _i64;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_time_to_live_input.dart'
    as _i68;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_time_to_live_output.dart'
    as _i67;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/execute_statement_input.dart'
    as _i75;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/execute_statement_output.dart'
    as _i74;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/execute_transaction_input.dart'
    as _i78;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/execute_transaction_output.dart'
    as _i77;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_table_to_point_in_time_input.dart'
    as _i81;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_table_to_point_in_time_output.dart'
    as _i80;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/get_item_input.dart'
    as _i84;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/get_item_output.dart'
    as _i83;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_table_input.dart'
    as _i87;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_table_output.dart'
    as _i86;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/kinesis_streaming_destination_input.dart'
    as _i71;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/kinesis_streaming_destination_output.dart'
    as _i70;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_backups_input.dart'
    as _i90;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_backups_output.dart'
    as _i89;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_contributor_insights_input.dart'
    as _i93;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_contributor_insights_output.dart'
    as _i92;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_exports_input.dart'
    as _i96;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_exports_output.dart'
    as _i95;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_global_tables_input.dart'
    as _i99;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_global_tables_output.dart'
    as _i98;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_imports_input.dart'
    as _i102;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_imports_output.dart'
    as _i101;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_tables_input.dart'
    as _i105;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_tags_of_resource_input.dart'
    as _i108;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_tags_of_resource_output.dart'
    as _i107;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/put_item_input.dart'
    as _i111;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/put_item_output.dart'
    as _i110;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/query_input.dart'
    as _i114;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/restore_table_from_backup_input.dart'
    as _i117;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/restore_table_from_backup_output.dart'
    as _i116;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/restore_table_to_point_in_time_input.dart'
    as _i120;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/restore_table_to_point_in_time_output.dart'
    as _i119;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/scan_input.dart'
    as _i122;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/tag_resource_input.dart'
    as _i124;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transact_get_items_input.dart'
    as _i127;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transact_get_items_output.dart'
    as _i126;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transact_write_items_input.dart'
    as _i130;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transact_write_items_output.dart'
    as _i129;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/untag_resource_input.dart'
    as _i132;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_continuous_backups_input.dart'
    as _i135;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_continuous_backups_output.dart'
    as _i134;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_contributor_insights_input.dart'
    as _i138;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_contributor_insights_output.dart'
    as _i137;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_global_table_input.dart'
    as _i141;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_global_table_output.dart'
    as _i140;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_global_table_settings_input.dart'
    as _i144;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_global_table_settings_output.dart'
    as _i143;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_item_input.dart'
    as _i147;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_item_output.dart'
    as _i146;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_table_input.dart'
    as _i150;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_table_output.dart'
    as _i149;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_table_replica_auto_scaling_input.dart'
    as _i153;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_table_replica_auto_scaling_output.dart'
    as _i152;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_time_to_live_input.dart'
    as _i156;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_time_to_live_output.dart'
    as _i155;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/batch_execute_statement_operation.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/batch_get_item_operation.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/batch_write_item_operation.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/create_backup_operation.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/create_global_table_operation.dart'
    as _i18;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/create_table_operation.dart'
    as _i21;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/delete_backup_operation.dart'
    as _i24;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/delete_item_operation.dart'
    as _i27;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/delete_table_operation.dart'
    as _i30;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/describe_backup_operation.dart'
    as _i33;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/describe_continuous_backups_operation.dart'
    as _i36;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/describe_contributor_insights_operation.dart'
    as _i39;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/describe_endpoints_operation.dart'
    as _i42;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/describe_export_operation.dart'
    as _i45;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/describe_global_table_operation.dart'
    as _i48;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/describe_global_table_settings_operation.dart'
    as _i51;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/describe_import_operation.dart'
    as _i54;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/describe_kinesis_streaming_destination_operation.dart'
    as _i57;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/describe_limits_operation.dart'
    as _i60;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/describe_table_operation.dart'
    as _i63;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/describe_table_replica_auto_scaling_operation.dart'
    as _i66;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/describe_time_to_live_operation.dart'
    as _i69;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/disable_kinesis_streaming_destination_operation.dart'
    as _i72;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/enable_kinesis_streaming_destination_operation.dart'
    as _i73;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/execute_statement_operation.dart'
    as _i76;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/execute_transaction_operation.dart'
    as _i79;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/export_table_to_point_in_time_operation.dart'
    as _i82;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/get_item_operation.dart'
    as _i85;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/import_table_operation.dart'
    as _i88;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/list_backups_operation.dart'
    as _i91;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/list_contributor_insights_operation.dart'
    as _i94;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/list_exports_operation.dart'
    as _i97;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/list_global_tables_operation.dart'
    as _i100;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/list_imports_operation.dart'
    as _i103;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/list_tables_operation.dart'
    as _i106;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/list_tags_of_resource_operation.dart'
    as _i109;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/put_item_operation.dart'
    as _i112;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/query_operation.dart'
    as _i115;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/restore_table_from_backup_operation.dart'
    as _i118;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/restore_table_to_point_in_time_operation.dart'
    as _i121;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/scan_operation.dart'
    as _i123;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/tag_resource_operation.dart'
    as _i125;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/transact_get_items_operation.dart'
    as _i128;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/transact_write_items_operation.dart'
    as _i131;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/untag_resource_operation.dart'
    as _i133;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/update_continuous_backups_operation.dart'
    as _i136;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/update_contributor_insights_operation.dart'
    as _i139;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/update_global_table_operation.dart'
    as _i142;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/update_global_table_settings_operation.dart'
    as _i145;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/update_item_operation.dart'
    as _i148;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/update_table_operation.dart'
    as _i151;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/update_table_replica_auto_scaling_operation.dart'
    as _i154;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/update_time_to_live_operation.dart'
    as _i157;

/// ## Amazon DynamoDB
///
/// Amazon DynamoDB is a fully managed NoSQL database service that provides fast and predictable performance with seamless scalability. DynamoDB lets you offload the administrative burdens of operating and scaling a distributed database, so that you don't have to worry about hardware provisioning, setup and configuration, replication, software patching, or cluster scaling.
///
/// With DynamoDB, you can create database tables that can store and retrieve any amount of data, and serve any level of request traffic. You can scale up or scale down your tables' throughput capacity without downtime or performance degradation, and use the Amazon Web Services Management Console to monitor resource utilization and performance metrics.
///
/// DynamoDB automatically spreads the data and traffic for your tables over a sufficient number of servers to handle your throughput and storage requirements, while maintaining consistent and fast performance. All of your data is stored on solid state disks (SSDs) and automatically replicated across multiple Availability Zones in an Amazon Web Services Region, providing built-in high availability and data durability.
class DynamoDbClient {
  /// ## Amazon DynamoDB
  ///
  /// Amazon DynamoDB is a fully managed NoSQL database service that provides fast and predictable performance with seamless scalability. DynamoDB lets you offload the administrative burdens of operating and scaling a distributed database, so that you don't have to worry about hardware provisioning, setup and configuration, replication, software patching, or cluster scaling.
  ///
  /// With DynamoDB, you can create database tables that can store and retrieve any amount of data, and serve any level of request traffic. You can scale up or scale down your tables' throughput capacity without downtime or performance degradation, and use the Amazon Web Services Management Console to monitor resource utilization and performance metrics.
  ///
  /// DynamoDB automatically spreads the data and traffic for your tables over a sufficient number of servers to handle your throughput and storage requirements, while maintaining consistent and fast performance. All of your data is stored on solid state disks (SSDs) and automatically replicated across multiple Availability Zones in an Amazon Web Services Region, providing built-in high availability and data durability.
  const DynamoDbClient({
    _i1.AWSHttpClient? client,
    required String region,
    Uri? baseUri,
    required _i2.AWSCredentialsProvider credentialsProvider,
  })  : _client = client,
        _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  final _i1.AWSHttpClient? _client;

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  /// This operation allows you to perform batch reads or writes on data stored in DynamoDB, using PartiQL. Each read statement in a `BatchExecuteStatement` must specify an equality condition on all key attributes. This enforces that each `SELECT` statement in a batch returns at most a single item.
  ///
  /// The entire batch must consist of either read statements or write statements, you cannot mix both in one batch.
  ///
  /// A HTTP 200 response does not mean that all statements in the BatchExecuteStatement succeeded. Error details for individual statements can be found under the [Error](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_BatchStatementResponse.html#DDB-Type-BatchStatementResponse-Error) field of the `BatchStatementResponse` for each statement.
  _i3.SmithyOperation<_i4.BatchExecuteStatementOutput> batchExecuteStatement(
    _i5.BatchExecuteStatementInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i6.BatchExecuteStatementOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The `BatchGetItem` operation returns the attributes of one or more items from one or more tables. You identify requested items by primary key.
  ///
  /// A single operation can retrieve up to 16 MB of data, which can contain as many as 100 items. `BatchGetItem` returns a partial result if the response size limit is exceeded, the table's provisioned throughput is exceeded, or an internal processing failure occurs. If a partial result is returned, the operation returns a value for `UnprocessedKeys`. You can use this value to retry the operation starting with the next item to get.
  ///
  /// If you request more than 100 items, `BatchGetItem` returns a `ValidationException` with the message "Too many items requested for the BatchGetItem call."
  ///
  /// For example, if you ask to retrieve 100 items, but each individual item is 300 KB in size, the system returns 52 items (so as not to exceed the 16 MB limit). It also returns an appropriate `UnprocessedKeys` value so you can get the next page of results. If desired, your application can include its own logic to assemble the pages of results into one dataset.
  ///
  /// If _none_ of the items can be processed due to insufficient provisioned throughput on all of the tables in the request, then `BatchGetItem` returns a `ProvisionedThroughputExceededException`. If _at least one_ of the items is successfully processed, then `BatchGetItem` completes successfully, while returning the keys of the unread items in `UnprocessedKeys`.
  ///
  /// If DynamoDB returns any unprocessed items, you should retry the batch operation on those items. However, _we strongly recommend that you use an exponential backoff algorithm_. If you retry the batch operation immediately, the underlying read or write requests can still fail due to throttling on the individual tables. If you delay the batch operation using exponential backoff, the individual requests in the batch are much more likely to succeed.
  ///
  /// For more information, see [Batch Operations and Error Handling](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations) in the _Amazon DynamoDB Developer Guide_.
  ///
  /// By default, `BatchGetItem` performs eventually consistent reads on every table in the request. If you want strongly consistent reads instead, you can set `ConsistentRead` to `true` for any or all tables.
  ///
  /// In order to minimize response latency, `BatchGetItem` retrieves items in parallel.
  ///
  /// When designing your application, keep in mind that DynamoDB does not return items in any particular order. To help parse the response by item, include the primary key values for the items in your request in the `ProjectionExpression` parameter.
  ///
  /// If a requested item does not exist, it is not returned in the result. Requests for nonexistent items consume the minimum read capacity units according to the type of read. For more information, see [Working with Tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#CapacityUnitCalculations) in the _Amazon DynamoDB Developer Guide_.
  _i3.SmithyOperation<_i7.BatchGetItemOutput> batchGetItem(
    _i8.BatchGetItemInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i9.BatchGetItemOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The `BatchWriteItem` operation puts or deletes multiple items in one or more tables. A single call to `BatchWriteItem` can transmit up to 16MB of data over the network, consisting of up to 25 item put or delete operations. While individual items can be up to 400 KB once stored, it's important to note that an item's representation might be greater than 400KB while being sent in DynamoDB's JSON format for the API call. For more details on this distinction, see [Naming Rules and Data Types](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html).
  ///
  /// `BatchWriteItem` cannot update items. To update items, use the `UpdateItem` action.
  ///
  /// The individual `PutItem` and `DeleteItem` operations specified in `BatchWriteItem` are atomic; however `BatchWriteItem` as a whole is not. If any requested operations fail because the table's provisioned throughput is exceeded or an internal processing failure occurs, the failed operations are returned in the `UnprocessedItems` response parameter. You can investigate and optionally resend the requests. Typically, you would call `BatchWriteItem` in a loop. Each iteration would check for unprocessed items and submit a new `BatchWriteItem` request with those unprocessed items until all items have been processed.
  ///
  /// If _none_ of the items can be processed due to insufficient provisioned throughput on all of the tables in the request, then `BatchWriteItem` returns a `ProvisionedThroughputExceededException`.
  ///
  /// If DynamoDB returns any unprocessed items, you should retry the batch operation on those items. However, _we strongly recommend that you use an exponential backoff algorithm_. If you retry the batch operation immediately, the underlying read or write requests can still fail due to throttling on the individual tables. If you delay the batch operation using exponential backoff, the individual requests in the batch are much more likely to succeed.
  ///
  /// For more information, see [Batch Operations and Error Handling](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#Programming.Errors.BatchOperations) in the _Amazon DynamoDB Developer Guide_.
  ///
  /// With `BatchWriteItem`, you can efficiently write or delete large amounts of data, such as from Amazon EMR, or copy data from another database into DynamoDB. In order to improve performance with these large-scale operations, `BatchWriteItem` does not behave in the same way as individual `PutItem` and `DeleteItem` calls would. For example, you cannot specify conditions on individual put and delete requests, and `BatchWriteItem` does not return deleted items in the response.
  ///
  /// If you use a programming language that supports concurrency, you can use threads to write items in parallel. Your application must include the necessary logic to manage the threads. With languages that don't support threading, you must update or delete the specified items one at a time. In both situations, `BatchWriteItem` performs the specified put and delete operations in parallel, giving you the power of the thread pool approach without having to introduce complexity into your application.
  ///
  /// Parallel processing reduces latency, but each specified put and delete request consumes the same number of write capacity units whether it is processed in parallel or not. Delete operations on nonexistent items consume one write capacity unit.
  ///
  /// If one or more of the following is true, DynamoDB rejects the entire batch write operation:
  ///
  /// *   One or more tables specified in the `BatchWriteItem` request does not exist.
  ///
  /// *   Primary key attributes specified on an item in the request do not match those in the corresponding table's primary key schema.
  ///
  /// *   You try to perform multiple operations on the same item in the same `BatchWriteItem` request. For example, you cannot put and delete the same item in the same `BatchWriteItem` request.
  ///
  /// *   Your request contains at least two items with identical hash and range keys (which essentially is two put operations).
  ///
  /// *   There are more than 25 requests in the batch.
  ///
  /// *   Any individual item in a batch exceeds 400 KB.
  ///
  /// *   The total request size exceeds 16 MB.
  _i3.SmithyOperation<_i10.BatchWriteItemOutput> batchWriteItem(
    _i11.BatchWriteItemInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i12.BatchWriteItemOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a backup for an existing table.
  ///
  /// Each time you create an on-demand backup, the entire table data is backed up. There is no limit to the number of on-demand backups that can be taken.
  ///
  /// When you create an on-demand backup, a time marker of the request is cataloged, and the backup is created asynchronously, by applying all changes until the time of the request to the last full table snapshot. Backup requests are processed instantaneously and become available for restore within minutes.
  ///
  /// You can call `CreateBackup` at a maximum rate of 50 times per second.
  ///
  /// All backups in DynamoDB work without consuming any provisioned throughput on the table.
  ///
  /// If you submit a backup request on 2018-12-14 at 14:25:00, the backup is guaranteed to contain all data committed to the table up to 14:24:00, and data committed after 14:26:00 will not be. The backup might contain data modifications made between 14:24:00 and 14:26:00. On-demand backup does not support causal consistency.
  ///
  /// Along with data, the following are also included on the backups:
  ///
  /// *   Global secondary indexes (GSIs)
  ///
  /// *   Local secondary indexes (LSIs)
  ///
  /// *   Streams
  ///
  /// *   Provisioned read and write capacity
  _i3.SmithyOperation<_i13.CreateBackupOutput> createBackup(
    _i14.CreateBackupInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i15.CreateBackupOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a global table from an existing table. A global table creates a replication relationship between two or more DynamoDB tables with the same table name in the provided Regions.
  ///
  /// This operation only applies to [Version 2017.11.29](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html) of global tables.
  ///
  /// If you want to add a new replica table to a global table, each of the following conditions must be true:
  ///
  /// *   The table must have the same primary key as all of the other replicas.
  ///
  /// *   The table must have the same name as all of the other replicas.
  ///
  /// *   The table must have DynamoDB Streams enabled, with the stream containing both the new and the old images of the item.
  ///
  /// *   None of the replica tables in the global table can contain any data.
  ///
  ///
  /// If global secondary indexes are specified, then the following conditions must also be met:
  ///
  /// *   The global secondary indexes must have the same name.
  ///
  /// *   The global secondary indexes must have the same hash key and sort key (if present).
  ///
  ///
  /// If local secondary indexes are specified, then the following conditions must also be met:
  ///
  /// *   The local secondary indexes must have the same name.
  ///
  /// *   The local secondary indexes must have the same hash key and sort key (if present).
  ///
  ///
  /// Write capacity settings should be set consistently across your replica tables and secondary indexes. DynamoDB strongly recommends enabling auto scaling to manage the write capacity settings for all of your global tables replicas and indexes.
  ///
  /// If you prefer to manage write capacity settings manually, you should provision equal replicated write capacity units to your replica tables. You should also provision equal replicated write capacity units to matching secondary indexes across your global table.
  _i3.SmithyOperation<_i16.CreateGlobalTableOutput> createGlobalTable(
    _i17.CreateGlobalTableInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i18.CreateGlobalTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The `CreateTable` operation adds a new table to your account. In an Amazon Web Services account, table names must be unique within each Region. That is, you can have two tables with same name if you create the tables in different Regions.
  ///
  /// `CreateTable` is an asynchronous operation. Upon receiving a `CreateTable` request, DynamoDB immediately returns a response with a `TableStatus` of `CREATING`. After the table is created, DynamoDB sets the `TableStatus` to `ACTIVE`. You can perform read and write operations only on an `ACTIVE` table.
  ///
  /// You can optionally define secondary indexes on the new table, as part of the `CreateTable` operation. If you want to create multiple tables with secondary indexes on them, you must create the tables sequentially. Only one table with secondary indexes can be in the `CREATING` state at any given time.
  ///
  /// You can use the `DescribeTable` action to check the table status.
  _i3.SmithyOperation<_i19.CreateTableOutput> createTable(
    _i20.CreateTableInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i21.CreateTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes an existing backup of a table.
  ///
  /// You can call `DeleteBackup` at a maximum rate of 10 times per second.
  _i3.SmithyOperation<_i22.DeleteBackupOutput> deleteBackup(
    _i23.DeleteBackupInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i24.DeleteBackupOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes a single item in a table by primary key. You can perform a conditional delete operation that deletes the item if it exists, or if it has an expected attribute value.
  ///
  /// In addition to deleting an item, you can also return the item's attribute values in the same operation, using the `ReturnValues` parameter.
  ///
  /// Unless you specify conditions, the `DeleteItem` is an idempotent operation; running it multiple times on the same item or attribute does _not_ result in an error response.
  ///
  /// Conditional deletes are useful for deleting items only if specific conditions are met. If those conditions are met, DynamoDB performs the delete. Otherwise, the item is not deleted.
  _i3.SmithyOperation<_i25.DeleteItemOutput> deleteItem(
    _i26.DeleteItemInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i27.DeleteItemOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The `DeleteTable` operation deletes a table and all of its items. After a `DeleteTable` request, the specified table is in the `DELETING` state until DynamoDB completes the deletion. If the table is in the `ACTIVE` state, you can delete it. If a table is in `CREATING` or `UPDATING` states, then DynamoDB returns a `ResourceInUseException`. If the specified table does not exist, DynamoDB returns a `ResourceNotFoundException`. If table is already in the `DELETING` state, no error is returned.
  ///
  /// DynamoDB might continue to accept data read and write operations, such as `GetItem` and `PutItem`, on a table in the `DELETING` state until the table deletion is complete.
  ///
  /// When you delete a table, any indexes on that table are also deleted.
  ///
  /// If you have DynamoDB Streams enabled on the table, then the corresponding stream on that table goes into the `DISABLED` state, and the stream is automatically deleted after 24 hours.
  ///
  /// Use the `DescribeTable` action to check the status of the table.
  _i3.SmithyOperation<_i28.DeleteTableOutput> deleteTable(
    _i29.DeleteTableInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i30.DeleteTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes an existing backup of a table.
  ///
  /// You can call `DescribeBackup` at a maximum rate of 10 times per second.
  _i3.SmithyOperation<_i31.DescribeBackupOutput> describeBackup(
    _i32.DescribeBackupInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i33.DescribeBackupOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Checks the status of continuous backups and point in time recovery on the specified table. Continuous backups are `ENABLED` on all tables at table creation. If point in time recovery is enabled, `PointInTimeRecoveryStatus` will be set to ENABLED.
  ///
  /// After continuous backups and point in time recovery are enabled, you can restore to any point in time within `EarliestRestorableDateTime` and `LatestRestorableDateTime`.
  ///
  /// `LatestRestorableDateTime` is typically 5 minutes before the current time. You can restore your table to any point in time during the last 35 days.
  ///
  /// You can call `DescribeContinuousBackups` at a maximum rate of 10 times per second.
  _i3.SmithyOperation<_i34.DescribeContinuousBackupsOutput>
      describeContinuousBackups(
    _i35.DescribeContinuousBackupsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i36.DescribeContinuousBackupsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns information about contributor insights, for a given table or global secondary index.
  _i3.SmithyOperation<_i37.DescribeContributorInsightsOutput>
      describeContributorInsights(
    _i38.DescribeContributorInsightsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i39.DescribeContributorInsightsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the regional endpoint information.
  _i3.SmithyOperation<_i40.DescribeEndpointsResponse> describeEndpoints(
    _i41.DescribeEndpointsRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i42.DescribeEndpointsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes an existing table export.
  _i3.SmithyOperation<_i43.DescribeExportOutput> describeExport(
    _i44.DescribeExportInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i45.DescribeExportOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns information about the specified global table.
  ///
  /// This operation only applies to [Version 2017.11.29](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html) of global tables. If you are using global tables [Version 2019.11.21](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html) you can use [DescribeTable](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_DescribeTable.html) instead.
  _i3.SmithyOperation<_i46.DescribeGlobalTableOutput> describeGlobalTable(
    _i47.DescribeGlobalTableInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i48.DescribeGlobalTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes Region-specific settings for a global table.
  ///
  /// This operation only applies to [Version 2017.11.29](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html) of global tables.
  _i3.SmithyOperation<_i49.DescribeGlobalTableSettingsOutput>
      describeGlobalTableSettings(
    _i50.DescribeGlobalTableSettingsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i51.DescribeGlobalTableSettingsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Represents the properties of the import.
  _i3.SmithyOperation<_i52.DescribeImportOutput> describeImport(
    _i53.DescribeImportInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i54.DescribeImportOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns information about the status of Kinesis streaming.
  _i3.SmithyOperation<_i55.DescribeKinesisStreamingDestinationOutput>
      describeKinesisStreamingDestination(
    _i56.DescribeKinesisStreamingDestinationInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i57.DescribeKinesisStreamingDestinationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the current provisioned-capacity quotas for your Amazon Web Services account in a Region, both for the Region as a whole and for any one DynamoDB table that you create there.
  ///
  /// When you establish an Amazon Web Services account, the account has initial quotas on the maximum read capacity units and write capacity units that you can provision across all of your DynamoDB tables in a given Region. Also, there are per-table quotas that apply when you create a table there. For more information, see [Service, Account, and Table Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) page in the _Amazon DynamoDB Developer Guide_.
  ///
  /// Although you can increase these quotas by filing a case at [Amazon Web Services Support Center](https://console.aws.amazon.com/support/home#/), obtaining the increase is not instantaneous. The `DescribeLimits` action lets you write code to compare the capacity you are currently using to those quotas imposed by your account so that you have enough time to apply for an increase before you hit a quota.
  ///
  /// For example, you could use one of the Amazon Web Services SDKs to do the following:
  ///
  /// 1.  Call `DescribeLimits` for a particular Region to obtain your current account quotas on provisioned capacity there.
  ///
  /// 2.  Create a variable to hold the aggregate read capacity units provisioned for all your tables in that Region, and one to hold the aggregate write capacity units. Zero them both.
  ///
  /// 3.  Call `ListTables` to obtain a list of all your DynamoDB tables.
  ///
  /// 4.  For each table name listed by `ListTables`, do the following:
  ///
  ///     *   Call `DescribeTable` with the table name.
  ///
  ///     *   Use the data returned by `DescribeTable` to add the read capacity units and write capacity units provisioned for the table itself to your variables.
  ///
  ///     *   If the table has one or more global secondary indexes (GSIs), loop over these GSIs and add their provisioned capacity values to your variables as well.
  ///
  /// 5.  Report the account quotas for that Region returned by `DescribeLimits`, along with the total current provisioned capacity levels you have calculated.
  ///
  ///
  /// This will let you see whether you are getting close to your account-level quotas.
  ///
  /// The per-table quotas apply only when you are creating a new table. They restrict the sum of the provisioned capacity of the new table itself and all its global secondary indexes.
  ///
  /// For existing tables and their GSIs, DynamoDB doesn't let you increase provisioned capacity extremely rapidly, but the only quota that applies is that the aggregate provisioned capacity over all your tables and GSIs cannot exceed either of the per-account quotas.
  ///
  /// `DescribeLimits` should only be called periodically. You can expect throttling errors if you call it more than once in a minute.
  ///
  /// The `DescribeLimits` Request element has no content.
  _i3.SmithyOperation<_i58.DescribeLimitsOutput> describeLimits(
    _i59.DescribeLimitsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i60.DescribeLimitsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns information about the table, including the current status of the table, when it was created, the primary key schema, and any indexes on the table.
  ///
  /// If you issue a `DescribeTable` request immediately after a `CreateTable` request, DynamoDB might return a `ResourceNotFoundException`. This is because `DescribeTable` uses an eventually consistent query, and the metadata for your table might not be available at that moment. Wait for a few seconds, and then try the `DescribeTable` request again.
  _i3.SmithyOperation<_i61.DescribeTableOutput> describeTable(
    _i62.DescribeTableInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i63.DescribeTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes auto scaling settings across replicas of the global table at once.
  ///
  /// This operation only applies to [Version 2019.11.21](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html) of global tables.
  _i3.SmithyOperation<_i64.DescribeTableReplicaAutoScalingOutput>
      describeTableReplicaAutoScaling(
    _i65.DescribeTableReplicaAutoScalingInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i66.DescribeTableReplicaAutoScalingOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Gives a description of the Time to Live (TTL) status on the specified table.
  _i3.SmithyOperation<_i67.DescribeTimeToLiveOutput> describeTimeToLive(
    _i68.DescribeTimeToLiveInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i69.DescribeTimeToLiveOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Stops replication from the DynamoDB table to the Kinesis data stream. This is done without deleting either of the resources.
  _i3.SmithyOperation<_i70.KinesisStreamingDestinationOutput>
      disableKinesisStreamingDestination(
    _i71.KinesisStreamingDestinationInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i72.DisableKinesisStreamingDestinationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Starts table data replication to the specified Kinesis data stream at a timestamp chosen during the enable workflow. If this operation doesn't return results immediately, use DescribeKinesisStreamingDestination to check if streaming to the Kinesis data stream is ACTIVE.
  _i3.SmithyOperation<_i70.KinesisStreamingDestinationOutput>
      enableKinesisStreamingDestination(
    _i71.KinesisStreamingDestinationInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i73.EnableKinesisStreamingDestinationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This operation allows you to perform reads and singleton writes on data stored in DynamoDB, using PartiQL.
  ///
  /// For PartiQL reads (`SELECT` statement), if the total number of processed items exceeds the maximum dataset size limit of 1 MB, the read stops and results are returned to the user as a `LastEvaluatedKey` value to continue the read in a subsequent operation. If the filter criteria in `WHERE` clause does not match any data, the read will return an empty result set.
  ///
  /// A single `SELECT` statement response can return up to the maximum number of items (if using the Limit parameter) or a maximum of 1 MB of data (and then apply any filtering to the results using `WHERE` clause). If `LastEvaluatedKey` is present in the response, you need to paginate the result set.
  _i3.SmithyOperation<_i74.ExecuteStatementOutput> executeStatement(
    _i75.ExecuteStatementInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i76.ExecuteStatementOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This operation allows you to perform transactional reads or writes on data stored in DynamoDB, using PartiQL.
  ///
  /// The entire transaction must consist of either read statements or write statements, you cannot mix both in one transaction. The EXISTS function is an exception and can be used to check the condition of specific attributes of the item in a similar manner to `ConditionCheck` in the [TransactWriteItems](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/transaction-apis.html#transaction-apis-txwriteitems) API.
  _i3.SmithyOperation<_i77.ExecuteTransactionOutput> executeTransaction(
    _i78.ExecuteTransactionInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i79.ExecuteTransactionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Exports table data to an S3 bucket. The table must have point in time recovery enabled, and you can export data from any time within the point in time recovery window.
  _i3.SmithyOperation<_i80.ExportTableToPointInTimeOutput>
      exportTableToPointInTime(
    _i81.ExportTableToPointInTimeInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i82.ExportTableToPointInTimeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The `GetItem` operation returns a set of attributes for the item with the given primary key. If there is no matching item, `GetItem` does not return any data and there will be no `Item` element in the response.
  ///
  /// `GetItem` provides an eventually consistent read by default. If your application requires a strongly consistent read, set `ConsistentRead` to `true`. Although a strongly consistent read might take more time than an eventually consistent read, it always returns the last updated value.
  _i3.SmithyOperation<_i83.GetItemOutput> getItem(
    _i84.GetItemInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i85.GetItemOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Imports table data from an S3 bucket.
  _i3.SmithyOperation<_i86.ImportTableOutput> importTable(
    _i87.ImportTableInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i88.ImportTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// List backups associated with an Amazon Web Services account. To list backups for a given table, specify `TableName`. `ListBackups` returns a paginated list of results with at most 1 MB worth of items in a page. You can also specify a maximum number of entries to be returned in a page.
  ///
  /// In the request, start time is inclusive, but end time is exclusive. Note that these boundaries are for the time at which the original backup was requested.
  ///
  /// You can call `ListBackups` a maximum of five times per second.
  _i3.SmithyOperation<_i89.ListBackupsOutput> listBackups(
    _i90.ListBackupsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i91.ListBackupsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a list of ContributorInsightsSummary for a table and all its global secondary indexes.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i92.ListContributorInsightsOutput, int, String>>
      listContributorInsights(
    _i93.ListContributorInsightsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i94.ListContributorInsightsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Lists completed exports within the past 90 days.
  _i3.SmithyOperation<_i3.PaginatedResult<_i95.ListExportsOutput, int, String>>
      listExports(
    _i96.ListExportsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i97.ListExportsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Lists all global tables that have a replica in the specified Region.
  ///
  /// This operation only applies to [Version 2017.11.29](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html) of global tables.
  _i3.SmithyOperation<_i98.ListGlobalTablesOutput> listGlobalTables(
    _i99.ListGlobalTablesInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i100.ListGlobalTablesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Lists completed imports within the past 90 days.
  _i3.SmithyOperation<_i3.PaginatedResult<_i101.ListImportsOutput, int, String>>
      listImports(
    _i102.ListImportsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i103.ListImportsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns an array of table names associated with the current account and endpoint. The output from `ListTables` is paginated, with each page returning a maximum of 100 table names.
  _i3.SmithyOperation<_i3.PaginatedResult<_i104.BuiltList<String>, int, String>>
      listTables(
    _i105.ListTablesInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i106.ListTablesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// List all tags on an Amazon DynamoDB resource. You can call ListTagsOfResource up to 10 times per second, per account.
  ///
  /// For an overview on tagging DynamoDB resources, see [Tagging for DynamoDB](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html) in the _Amazon DynamoDB Developer Guide_.
  _i3.SmithyOperation<_i107.ListTagsOfResourceOutput> listTagsOfResource(
    _i108.ListTagsOfResourceInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i109.ListTagsOfResourceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a new item, or replaces an old item with a new item. If an item that has the same primary key as the new item already exists in the specified table, the new item completely replaces the existing item. You can perform a conditional put operation (add a new item if one with the specified primary key doesn't exist), or replace an existing item if it has certain attribute values. You can return the item's attribute values in the same operation, using the `ReturnValues` parameter.
  ///
  /// When you add an item, the primary key attributes are the only required attributes. Attribute values cannot be null.
  ///
  /// Empty String and Binary attribute values are allowed. Attribute values of type String and Binary must have a length greater than zero if the attribute is used as a key attribute for a table or index. Set type attributes cannot be empty.
  ///
  /// Invalid Requests with empty values will be rejected with a `ValidationException` exception.
  ///
  /// To prevent a new item from replacing an existing item, use a conditional expression that contains the `attribute\_not\_exists` function with the name of the attribute being used as the partition key for the table. Since every record must contain that attribute, the `attribute\_not\_exists` function will only succeed if no matching item exists.
  ///
  /// For more information about `PutItem`, see [Working with Items](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html) in the _Amazon DynamoDB Developer Guide_.
  _i3.SmithyOperation<_i110.PutItemOutput> putItem(
    _i111.PutItemInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i112.PutItemOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// You must provide the name of the partition key attribute and a single value for that attribute. `Query` returns all items with that partition key value. Optionally, you can provide a sort key attribute and use a comparison operator to refine the search results.
  ///
  /// Use the `KeyConditionExpression` parameter to provide a specific value for the partition key. The `Query` operation will return all of the items from the table or index with that partition key value. You can optionally narrow the scope of the `Query` operation by specifying a sort key value and a comparison operator in `KeyConditionExpression`. To further refine the `Query` results, you can optionally provide a `FilterExpression`. A `FilterExpression` determines which items within the results should be returned to you. All of the other results are discarded.
  ///
  /// A `Query` operation always returns a result set. If no matching items are found, the result set will be empty. Queries that do not return results consume the minimum number of read capacity units for that type of read operation.
  ///
  /// DynamoDB calculates the number of read capacity units consumed based on item size, not on the amount of data that is returned to an application. The number of capacity units consumed will be the same whether you request all of the attributes (the default behavior) or just some of them (using a projection expression). The number will also be the same whether or not you use a `FilterExpression`.
  ///
  /// `Query` results are always sorted by the sort key value. If the data type of the sort key is Number, the results are returned in numeric order; otherwise, the results are returned in order of UTF-8 bytes. By default, the sort order is ascending. To reverse the order, set the `ScanIndexForward` parameter to false.
  ///
  /// A single `Query` operation will read up to the maximum number of items set (if using the `Limit` parameter) or a maximum of 1 MB of data and then apply any filtering to the results using `FilterExpression`. If `LastEvaluatedKey` is present in the response, you will need to paginate the result set. For more information, see [Paginating the Results](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Query.html#Query.Pagination) in the _Amazon DynamoDB Developer Guide_.
  ///
  /// `FilterExpression` is applied after a `Query` finishes, but before the results are returned. A `FilterExpression` cannot contain partition key or sort key attributes. You need to specify those attributes in the `KeyConditionExpression`.
  ///
  /// A `Query` operation can return an empty result set and a `LastEvaluatedKey` if all the items read for the page of results are filtered out.
  ///
  /// You can query a table, a local secondary index, or a global secondary index. For a query on a table or on a local secondary index, you can set the `ConsistentRead` parameter to `true` and obtain a strongly consistent result. Global secondary indexes support eventually consistent reads only, so do not specify `ConsistentRead` when querying a global secondary index.
  _i3.SmithyOperation<
      _i3.PaginatedResult<
          _i104.BuiltList<_i104.BuiltMap<String, _i113.AttributeValue>>,
          int,
          _i104.BuiltMap<String, _i113.AttributeValue>>> query(
    _i114.QueryInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i115.QueryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a new table from an existing backup. Any number of users can execute up to 4 concurrent restores (any type of restore) in a given account.
  ///
  /// You can call `RestoreTableFromBackup` at a maximum rate of 10 times per second.
  ///
  /// You must manually set up the following on the restored table:
  ///
  /// *   Auto scaling policies
  ///
  /// *   IAM policies
  ///
  /// *   Amazon CloudWatch metrics and alarms
  ///
  /// *   Tags
  ///
  /// *   Stream settings
  ///
  /// *   Time to Live (TTL) settings
  _i3.SmithyOperation<_i116.RestoreTableFromBackupOutput>
      restoreTableFromBackup(
    _i117.RestoreTableFromBackupInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i118.RestoreTableFromBackupOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Restores the specified table to the specified point in time within `EarliestRestorableDateTime` and `LatestRestorableDateTime`. You can restore your table to any point in time during the last 35 days. Any number of users can execute up to 4 concurrent restores (any type of restore) in a given account.
  ///
  /// When you restore using point in time recovery, DynamoDB restores your table data to the state based on the selected date and time (day:hour:minute:second) to a new table.
  ///
  /// Along with data, the following are also included on the new restored table using point in time recovery:
  ///
  /// *   Global secondary indexes (GSIs)
  ///
  /// *   Local secondary indexes (LSIs)
  ///
  /// *   Provisioned read and write capacity
  ///
  /// *   Encryption settings
  ///
  ///     All these settings come from the current settings of the source table at the time of restore.
  ///
  ///
  /// You must manually set up the following on the restored table:
  ///
  /// *   Auto scaling policies
  ///
  /// *   IAM policies
  ///
  /// *   Amazon CloudWatch metrics and alarms
  ///
  /// *   Tags
  ///
  /// *   Stream settings
  ///
  /// *   Time to Live (TTL) settings
  ///
  /// *   Point in time recovery settings
  _i3.SmithyOperation<_i119.RestoreTableToPointInTimeOutput>
      restoreTableToPointInTime(
    _i120.RestoreTableToPointInTimeInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i121.RestoreTableToPointInTimeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The `Scan` operation returns one or more items and item attributes by accessing every item in a table or a secondary index. To have DynamoDB return fewer items, you can provide a `FilterExpression` operation.
  ///
  /// If the total number of scanned items exceeds the maximum dataset size limit of 1 MB, the scan stops and results are returned to the user as a `LastEvaluatedKey` value to continue the scan in a subsequent operation. The results also include the number of items exceeding the limit. A scan can result in no table data meeting the filter criteria.
  ///
  /// A single `Scan` operation reads up to the maximum number of items set (if using the `Limit` parameter) or a maximum of 1 MB of data and then apply any filtering to the results using `FilterExpression`. If `LastEvaluatedKey` is present in the response, you need to paginate the result set. For more information, see [Paginating the Results](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.Pagination) in the _Amazon DynamoDB Developer Guide_.
  ///
  /// `Scan` operations proceed sequentially; however, for faster performance on a large table or secondary index, applications can request a parallel `Scan` operation by providing the `Segment` and `TotalSegments` parameters. For more information, see [Parallel Scan](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.ParallelScan) in the _Amazon DynamoDB Developer Guide_.
  ///
  /// `Scan` uses eventually consistent reads when accessing the data in a table; therefore, the result set might not include the changes to data in the table immediately before the operation began. If you need a consistent copy of the data, as of the time that the `Scan` begins, you can set the `ConsistentRead` parameter to `true`.
  _i3.SmithyOperation<
      _i3.PaginatedResult<
          _i104.BuiltList<_i104.BuiltMap<String, _i113.AttributeValue>>,
          int,
          _i104.BuiltMap<String, _i113.AttributeValue>>> scan(
    _i122.ScanInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i123.ScanOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Associate a set of tags with an Amazon DynamoDB resource. You can then activate these user-defined tags so that they appear on the Billing and Cost Management console for cost allocation tracking. You can call TagResource up to five times per second, per account.
  ///
  /// For an overview on tagging DynamoDB resources, see [Tagging for DynamoDB](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html) in the _Amazon DynamoDB Developer Guide_.
  _i3.SmithyOperation<void> tagResource(
    _i124.TagResourceInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i125.TagResourceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// `TransactGetItems` is a synchronous operation that atomically retrieves multiple items from one or more tables (but not from indexes) in a single account and Region. A `TransactGetItems` call can contain up to 100 `TransactGetItem` objects, each of which contains a `Get` structure that specifies an item to retrieve from a table in the account and Region. A call to `TransactGetItems` cannot retrieve items from tables in more than one Amazon Web Services account or Region. The aggregate size of the items in the transaction cannot exceed 4 MB.
  ///
  /// DynamoDB rejects the entire `TransactGetItems` request if any of the following is true:
  ///
  /// *   A conflicting operation is in the process of updating an item to be read.
  ///
  /// *   There is insufficient provisioned capacity for the transaction to be completed.
  ///
  /// *   There is a user error, such as an invalid data format.
  ///
  /// *   The aggregate size of the items in the transaction cannot exceed 4 MB.
  _i3.SmithyOperation<_i126.TransactGetItemsOutput> transactGetItems(
    _i127.TransactGetItemsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i128.TransactGetItemsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// `TransactWriteItems` is a synchronous write operation that groups up to 100 action requests. These actions can target items in different tables, but not in different Amazon Web Services accounts or Regions, and no two actions can target the same item. For example, you cannot both `ConditionCheck` and `Update` the same item. The aggregate size of the items in the transaction cannot exceed 4 MB.
  ///
  /// The actions are completed atomically so that either all of them succeed, or all of them fail. They are defined by the following objects:
  ///
  /// *   `Put`  —   Initiates a `PutItem` operation to write a new item. This structure specifies the primary key of the item to be written, the name of the table to write it in, an optional condition expression that must be satisfied for the write to succeed, a list of the item's attributes, and a field indicating whether to retrieve the item's attributes if the condition is not met.
  ///
  /// *   `Update`  —   Initiates an `UpdateItem` operation to update an existing item. This structure specifies the primary key of the item to be updated, the name of the table where it resides, an optional condition expression that must be satisfied for the update to succeed, an expression that defines one or more attributes to be updated, and a field indicating whether to retrieve the item's attributes if the condition is not met.
  ///
  /// *   `Delete`  —   Initiates a `DeleteItem` operation to delete an existing item. This structure specifies the primary key of the item to be deleted, the name of the table where it resides, an optional condition expression that must be satisfied for the deletion to succeed, and a field indicating whether to retrieve the item's attributes if the condition is not met.
  ///
  /// *   `ConditionCheck`  —   Applies a condition to an item that is not being modified by the transaction. This structure specifies the primary key of the item to be checked, the name of the table where it resides, a condition expression that must be satisfied for the transaction to succeed, and a field indicating whether to retrieve the item's attributes if the condition is not met.
  ///
  ///
  /// DynamoDB rejects the entire `TransactWriteItems` request if any of the following is true:
  ///
  /// *   A condition in one of the condition expressions is not met.
  ///
  /// *   An ongoing operation is in the process of updating the same item.
  ///
  /// *   There is insufficient provisioned capacity for the transaction to be completed.
  ///
  /// *   An item size becomes too large (bigger than 400 KB), a local secondary index (LSI) becomes too large, or a similar validation error occurs because of changes made by the transaction.
  ///
  /// *   The aggregate size of the items in the transaction exceeds 4 MB.
  ///
  /// *   There is a user error, such as an invalid data format.
  _i3.SmithyOperation<_i129.TransactWriteItemsOutput> transactWriteItems(
    _i130.TransactWriteItemsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i131.TransactWriteItemsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Removes the association of tags from an Amazon DynamoDB resource. You can call `UntagResource` up to five times per second, per account.
  ///
  /// For an overview on tagging DynamoDB resources, see [Tagging for DynamoDB](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html) in the _Amazon DynamoDB Developer Guide_.
  _i3.SmithyOperation<void> untagResource(
    _i132.UntagResourceInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i133.UntagResourceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// `UpdateContinuousBackups` enables or disables point in time recovery for the specified table. A successful `UpdateContinuousBackups` call returns the current `ContinuousBackupsDescription`. Continuous backups are `ENABLED` on all tables at table creation. If point in time recovery is enabled, `PointInTimeRecoveryStatus` will be set to ENABLED.
  ///
  /// Once continuous backups and point in time recovery are enabled, you can restore to any point in time within `EarliestRestorableDateTime` and `LatestRestorableDateTime`.
  ///
  /// `LatestRestorableDateTime` is typically 5 minutes before the current time. You can restore your table to any point in time during the last 35 days.
  _i3.SmithyOperation<_i134.UpdateContinuousBackupsOutput>
      updateContinuousBackups(
    _i135.UpdateContinuousBackupsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i136.UpdateContinuousBackupsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Updates the status for contributor insights for a specific table or index. CloudWatch Contributor Insights for DynamoDB graphs display the partition key and (if applicable) sort key of frequently accessed items and frequently throttled items in plaintext. If you require the use of Amazon Web Services Key Management Service (KMS) to encrypt this table’s partition key and sort key data with an Amazon Web Services managed key or customer managed key, you should not enable CloudWatch Contributor Insights for DynamoDB for this table.
  _i3.SmithyOperation<_i137.UpdateContributorInsightsOutput>
      updateContributorInsights(
    _i138.UpdateContributorInsightsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i139.UpdateContributorInsightsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds or removes replicas in the specified global table. The global table must already exist to be able to use this operation. Any replica to be added must be empty, have the same name as the global table, have the same key schema, have DynamoDB Streams enabled, and have the same provisioned and maximum write capacity units.
  ///
  /// Although you can use `UpdateGlobalTable` to add replicas and remove replicas in a single request, for simplicity we recommend that you issue separate requests for adding or removing replicas.
  ///
  /// If global secondary indexes are specified, then the following conditions must also be met:
  ///
  /// *   The global secondary indexes must have the same name.
  ///
  /// *   The global secondary indexes must have the same hash key and sort key (if present).
  ///
  /// *   The global secondary indexes must have the same provisioned and maximum write capacity units.
  _i3.SmithyOperation<_i140.UpdateGlobalTableOutput> updateGlobalTable(
    _i141.UpdateGlobalTableInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i142.UpdateGlobalTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Updates settings for a global table.
  _i3.SmithyOperation<_i143.UpdateGlobalTableSettingsOutput>
      updateGlobalTableSettings(
    _i144.UpdateGlobalTableSettingsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i145.UpdateGlobalTableSettingsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Edits an existing item's attributes, or adds a new item to the table if it does not already exist. You can put, delete, or add attribute values. You can also perform a conditional update on an existing item (insert a new attribute name-value pair if it doesn't exist, or replace an existing name-value pair if it has certain expected attribute values).
  ///
  /// You can also return the item's attribute values in the same `UpdateItem` operation using the `ReturnValues` parameter.
  _i3.SmithyOperation<_i146.UpdateItemOutput> updateItem(
    _i147.UpdateItemInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i148.UpdateItemOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the provisioned throughput settings, global secondary indexes, or DynamoDB Streams settings for a given table.
  ///
  /// You can only perform one of the following operations at once:
  ///
  /// *   Modify the provisioned throughput settings of the table.
  ///
  /// *   Remove a global secondary index from the table.
  ///
  /// *   Create a new global secondary index on the table. After the index begins backfilling, you can use `UpdateTable` to perform other operations.
  ///
  ///
  /// `UpdateTable` is an asynchronous operation; while it is executing, the table status changes from `ACTIVE` to `UPDATING`. While it is `UPDATING`, you cannot issue another `UpdateTable` request. When the table returns to the `ACTIVE` state, the `UpdateTable` operation is complete.
  _i3.SmithyOperation<_i149.UpdateTableOutput> updateTable(
    _i150.UpdateTableInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i151.UpdateTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Updates auto scaling settings on your global tables at once.
  ///
  /// This operation only applies to [Version 2019.11.21](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html) of global tables.
  _i3.SmithyOperation<_i152.UpdateTableReplicaAutoScalingOutput>
      updateTableReplicaAutoScaling(
    _i153.UpdateTableReplicaAutoScalingInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i154.UpdateTableReplicaAutoScalingOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The `UpdateTimeToLive` method enables or disables Time to Live (TTL) for the specified table. A successful `UpdateTimeToLive` call returns the current `TimeToLiveSpecification`. It can take up to one hour for the change to fully process. Any additional `UpdateTimeToLive` calls for the same table during this one hour duration result in a `ValidationException`.
  ///
  /// TTL compares the current time in epoch time format to the time stored in the TTL attribute of an item. If the epoch time value stored in the attribute is less than the current time, the item is marked as expired and subsequently deleted.
  ///
  /// The epoch time format is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.
  ///
  /// DynamoDB deletes expired items on a best-effort basis to ensure availability of throughput for other data operations.
  ///
  /// DynamoDB typically deletes expired items within two days of expiration. The exact duration within which an item gets deleted after expiration is specific to the nature of the workload. Items that have expired and not been deleted will still show up in reads, queries, and scans.
  ///
  /// As items are deleted, they are removed from any local secondary index and global secondary index immediately in the same eventually consistent way as a standard delete operation.
  ///
  /// For more information, see [Time To Live](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/TTL.html) in the Amazon DynamoDB Developer Guide.
  _i3.SmithyOperation<_i155.UpdateTimeToLiveOutput> updateTimeToLive(
    _i156.UpdateTimeToLiveInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i157.UpdateTimeToLiveOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_store_image_tasks_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStoreImageTasksResult extends DescribeStoreImageTasksResult {
  @override
  final _i2.BuiltList<StoreImageTaskResult>? storeImageTaskResults;
  @override
  final String? nextToken;

  factory _$DescribeStoreImageTasksResult(
          [void Function(DescribeStoreImageTasksResultBuilder)? updates]) =>
      (new DescribeStoreImageTasksResultBuilder()..update(updates))._build();

  _$DescribeStoreImageTasksResult._(
      {this.storeImageTaskResults, this.nextToken})
      : super._();

  @override
  DescribeStoreImageTasksResult rebuild(
          void Function(DescribeStoreImageTasksResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStoreImageTasksResultBuilder toBuilder() =>
      new DescribeStoreImageTasksResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStoreImageTasksResult &&
        storeImageTaskResults == other.storeImageTaskResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, storeImageTaskResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeStoreImageTasksResultBuilder
    implements
        Builder<DescribeStoreImageTasksResult,
            DescribeStoreImageTasksResultBuilder> {
  _$DescribeStoreImageTasksResult? _$v;

  _i2.ListBuilder<StoreImageTaskResult>? _storeImageTaskResults;
  _i2.ListBuilder<StoreImageTaskResult> get storeImageTaskResults =>
      _$this._storeImageTaskResults ??=
          new _i2.ListBuilder<StoreImageTaskResult>();
  set storeImageTaskResults(
          _i2.ListBuilder<StoreImageTaskResult>? storeImageTaskResults) =>
      _$this._storeImageTaskResults = storeImageTaskResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeStoreImageTasksResultBuilder();

  DescribeStoreImageTasksResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _storeImageTaskResults = $v.storeImageTaskResults?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStoreImageTasksResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStoreImageTasksResult;
  }

  @override
  void update(void Function(DescribeStoreImageTasksResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStoreImageTasksResult build() => _build();

  _$DescribeStoreImageTasksResult _build() {
    _$DescribeStoreImageTasksResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeStoreImageTasksResult._(
              storeImageTaskResults: _storeImageTaskResults?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'storeImageTaskResults';
        _storeImageTaskResults?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeStoreImageTasksResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_import_image_tasks_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeImportImageTasksResult extends DescribeImportImageTasksResult {
  @override
  final _i2.BuiltList<ImportImageTask>? importImageTasks;
  @override
  final String? nextToken;

  factory _$DescribeImportImageTasksResult(
          [void Function(DescribeImportImageTasksResultBuilder)? updates]) =>
      (new DescribeImportImageTasksResultBuilder()..update(updates))._build();

  _$DescribeImportImageTasksResult._({this.importImageTasks, this.nextToken})
      : super._();

  @override
  DescribeImportImageTasksResult rebuild(
          void Function(DescribeImportImageTasksResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeImportImageTasksResultBuilder toBuilder() =>
      new DescribeImportImageTasksResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeImportImageTasksResult &&
        importImageTasks == other.importImageTasks &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, importImageTasks.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeImportImageTasksResultBuilder
    implements
        Builder<DescribeImportImageTasksResult,
            DescribeImportImageTasksResultBuilder> {
  _$DescribeImportImageTasksResult? _$v;

  _i2.ListBuilder<ImportImageTask>? _importImageTasks;
  _i2.ListBuilder<ImportImageTask> get importImageTasks =>
      _$this._importImageTasks ??= new _i2.ListBuilder<ImportImageTask>();
  set importImageTasks(_i2.ListBuilder<ImportImageTask>? importImageTasks) =>
      _$this._importImageTasks = importImageTasks;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeImportImageTasksResultBuilder();

  DescribeImportImageTasksResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _importImageTasks = $v.importImageTasks?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeImportImageTasksResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeImportImageTasksResult;
  }

  @override
  void update(void Function(DescribeImportImageTasksResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeImportImageTasksResult build() => _build();

  _$DescribeImportImageTasksResult _build() {
    _$DescribeImportImageTasksResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeImportImageTasksResult._(
              importImageTasks: _importImageTasks?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'importImageTasks';
        _importImageTasks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeImportImageTasksResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

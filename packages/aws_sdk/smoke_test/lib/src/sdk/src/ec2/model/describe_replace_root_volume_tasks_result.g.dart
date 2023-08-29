// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_replace_root_volume_tasks_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeReplaceRootVolumeTasksResult
    extends DescribeReplaceRootVolumeTasksResult {
  @override
  final _i2.BuiltList<ReplaceRootVolumeTask>? replaceRootVolumeTasks;
  @override
  final String? nextToken;

  factory _$DescribeReplaceRootVolumeTasksResult(
          [void Function(DescribeReplaceRootVolumeTasksResultBuilder)?
              updates]) =>
      (new DescribeReplaceRootVolumeTasksResultBuilder()..update(updates))
          ._build();

  _$DescribeReplaceRootVolumeTasksResult._(
      {this.replaceRootVolumeTasks, this.nextToken})
      : super._();

  @override
  DescribeReplaceRootVolumeTasksResult rebuild(
          void Function(DescribeReplaceRootVolumeTasksResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeReplaceRootVolumeTasksResultBuilder toBuilder() =>
      new DescribeReplaceRootVolumeTasksResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeReplaceRootVolumeTasksResult &&
        replaceRootVolumeTasks == other.replaceRootVolumeTasks &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, replaceRootVolumeTasks.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeReplaceRootVolumeTasksResultBuilder
    implements
        Builder<DescribeReplaceRootVolumeTasksResult,
            DescribeReplaceRootVolumeTasksResultBuilder> {
  _$DescribeReplaceRootVolumeTasksResult? _$v;

  _i2.ListBuilder<ReplaceRootVolumeTask>? _replaceRootVolumeTasks;
  _i2.ListBuilder<ReplaceRootVolumeTask> get replaceRootVolumeTasks =>
      _$this._replaceRootVolumeTasks ??=
          new _i2.ListBuilder<ReplaceRootVolumeTask>();
  set replaceRootVolumeTasks(
          _i2.ListBuilder<ReplaceRootVolumeTask>? replaceRootVolumeTasks) =>
      _$this._replaceRootVolumeTasks = replaceRootVolumeTasks;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeReplaceRootVolumeTasksResultBuilder();

  DescribeReplaceRootVolumeTasksResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _replaceRootVolumeTasks = $v.replaceRootVolumeTasks?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeReplaceRootVolumeTasksResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeReplaceRootVolumeTasksResult;
  }

  @override
  void update(
      void Function(DescribeReplaceRootVolumeTasksResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeReplaceRootVolumeTasksResult build() => _build();

  _$DescribeReplaceRootVolumeTasksResult _build() {
    _$DescribeReplaceRootVolumeTasksResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeReplaceRootVolumeTasksResult._(
              replaceRootVolumeTasks: _replaceRootVolumeTasks?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'replaceRootVolumeTasks';
        _replaceRootVolumeTasks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeReplaceRootVolumeTasksResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

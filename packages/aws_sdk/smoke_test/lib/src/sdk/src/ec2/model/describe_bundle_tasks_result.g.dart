// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_bundle_tasks_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeBundleTasksResult extends DescribeBundleTasksResult {
  @override
  final _i2.BuiltList<BundleTask>? bundleTasks;

  factory _$DescribeBundleTasksResult(
          [void Function(DescribeBundleTasksResultBuilder)? updates]) =>
      (new DescribeBundleTasksResultBuilder()..update(updates))._build();

  _$DescribeBundleTasksResult._({this.bundleTasks}) : super._();

  @override
  DescribeBundleTasksResult rebuild(
          void Function(DescribeBundleTasksResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeBundleTasksResultBuilder toBuilder() =>
      new DescribeBundleTasksResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeBundleTasksResult &&
        bundleTasks == other.bundleTasks;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bundleTasks.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeBundleTasksResultBuilder
    implements
        Builder<DescribeBundleTasksResult, DescribeBundleTasksResultBuilder> {
  _$DescribeBundleTasksResult? _$v;

  _i2.ListBuilder<BundleTask>? _bundleTasks;
  _i2.ListBuilder<BundleTask> get bundleTasks =>
      _$this._bundleTasks ??= new _i2.ListBuilder<BundleTask>();
  set bundleTasks(_i2.ListBuilder<BundleTask>? bundleTasks) =>
      _$this._bundleTasks = bundleTasks;

  DescribeBundleTasksResultBuilder();

  DescribeBundleTasksResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bundleTasks = $v.bundleTasks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeBundleTasksResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeBundleTasksResult;
  }

  @override
  void update(void Function(DescribeBundleTasksResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeBundleTasksResult build() => _build();

  _$DescribeBundleTasksResult _build() {
    _$DescribeBundleTasksResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeBundleTasksResult._(bundleTasks: _bundleTasks?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bundleTasks';
        _bundleTasks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeBundleTasksResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

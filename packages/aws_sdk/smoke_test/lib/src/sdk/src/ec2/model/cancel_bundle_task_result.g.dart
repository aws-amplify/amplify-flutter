// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_bundle_task_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelBundleTaskResult extends CancelBundleTaskResult {
  @override
  final BundleTask? bundleTask;

  factory _$CancelBundleTaskResult(
          [void Function(CancelBundleTaskResultBuilder)? updates]) =>
      (new CancelBundleTaskResultBuilder()..update(updates))._build();

  _$CancelBundleTaskResult._({this.bundleTask}) : super._();

  @override
  CancelBundleTaskResult rebuild(
          void Function(CancelBundleTaskResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelBundleTaskResultBuilder toBuilder() =>
      new CancelBundleTaskResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelBundleTaskResult && bundleTask == other.bundleTask;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bundleTask.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelBundleTaskResultBuilder
    implements Builder<CancelBundleTaskResult, CancelBundleTaskResultBuilder> {
  _$CancelBundleTaskResult? _$v;

  BundleTaskBuilder? _bundleTask;
  BundleTaskBuilder get bundleTask =>
      _$this._bundleTask ??= new BundleTaskBuilder();
  set bundleTask(BundleTaskBuilder? bundleTask) =>
      _$this._bundleTask = bundleTask;

  CancelBundleTaskResultBuilder();

  CancelBundleTaskResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bundleTask = $v.bundleTask?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelBundleTaskResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelBundleTaskResult;
  }

  @override
  void update(void Function(CancelBundleTaskResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelBundleTaskResult build() => _build();

  _$CancelBundleTaskResult _build() {
    _$CancelBundleTaskResult _$result;
    try {
      _$result = _$v ??
          new _$CancelBundleTaskResult._(bundleTask: _bundleTask?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bundleTask';
        _bundleTask?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CancelBundleTaskResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

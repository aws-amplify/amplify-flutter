// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bundle_instance_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BundleInstanceResult extends BundleInstanceResult {
  @override
  final BundleTask? bundleTask;

  factory _$BundleInstanceResult(
          [void Function(BundleInstanceResultBuilder)? updates]) =>
      (new BundleInstanceResultBuilder()..update(updates))._build();

  _$BundleInstanceResult._({this.bundleTask}) : super._();

  @override
  BundleInstanceResult rebuild(
          void Function(BundleInstanceResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BundleInstanceResultBuilder toBuilder() =>
      new BundleInstanceResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BundleInstanceResult && bundleTask == other.bundleTask;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bundleTask.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BundleInstanceResultBuilder
    implements Builder<BundleInstanceResult, BundleInstanceResultBuilder> {
  _$BundleInstanceResult? _$v;

  BundleTaskBuilder? _bundleTask;
  BundleTaskBuilder get bundleTask =>
      _$this._bundleTask ??= new BundleTaskBuilder();
  set bundleTask(BundleTaskBuilder? bundleTask) =>
      _$this._bundleTask = bundleTask;

  BundleInstanceResultBuilder();

  BundleInstanceResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bundleTask = $v.bundleTask?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BundleInstanceResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BundleInstanceResult;
  }

  @override
  void update(void Function(BundleInstanceResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BundleInstanceResult build() => _build();

  _$BundleInstanceResult _build() {
    _$BundleInstanceResult _$result;
    try {
      _$result =
          _$v ?? new _$BundleInstanceResult._(bundleTask: _bundleTask?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bundleTask';
        _bundleTask?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BundleInstanceResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

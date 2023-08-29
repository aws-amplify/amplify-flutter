// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'run_scheduled_instances_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RunScheduledInstancesResult extends RunScheduledInstancesResult {
  @override
  final _i2.BuiltList<String>? instanceIdSet;

  factory _$RunScheduledInstancesResult(
          [void Function(RunScheduledInstancesResultBuilder)? updates]) =>
      (new RunScheduledInstancesResultBuilder()..update(updates))._build();

  _$RunScheduledInstancesResult._({this.instanceIdSet}) : super._();

  @override
  RunScheduledInstancesResult rebuild(
          void Function(RunScheduledInstancesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RunScheduledInstancesResultBuilder toBuilder() =>
      new RunScheduledInstancesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RunScheduledInstancesResult &&
        instanceIdSet == other.instanceIdSet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceIdSet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RunScheduledInstancesResultBuilder
    implements
        Builder<RunScheduledInstancesResult,
            RunScheduledInstancesResultBuilder> {
  _$RunScheduledInstancesResult? _$v;

  _i2.ListBuilder<String>? _instanceIdSet;
  _i2.ListBuilder<String> get instanceIdSet =>
      _$this._instanceIdSet ??= new _i2.ListBuilder<String>();
  set instanceIdSet(_i2.ListBuilder<String>? instanceIdSet) =>
      _$this._instanceIdSet = instanceIdSet;

  RunScheduledInstancesResultBuilder();

  RunScheduledInstancesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceIdSet = $v.instanceIdSet?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RunScheduledInstancesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RunScheduledInstancesResult;
  }

  @override
  void update(void Function(RunScheduledInstancesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RunScheduledInstancesResult build() => _build();

  _$RunScheduledInstancesResult _build() {
    _$RunScheduledInstancesResult _$result;
    try {
      _$result = _$v ??
          new _$RunScheduledInstancesResult._(
              instanceIdSet: _instanceIdSet?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceIdSet';
        _instanceIdSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RunScheduledInstancesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

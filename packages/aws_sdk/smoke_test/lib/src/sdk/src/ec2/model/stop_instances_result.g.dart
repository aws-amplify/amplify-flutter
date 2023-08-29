// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stop_instances_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StopInstancesResult extends StopInstancesResult {
  @override
  final _i2.BuiltList<InstanceStateChange>? stoppingInstances;

  factory _$StopInstancesResult(
          [void Function(StopInstancesResultBuilder)? updates]) =>
      (new StopInstancesResultBuilder()..update(updates))._build();

  _$StopInstancesResult._({this.stoppingInstances}) : super._();

  @override
  StopInstancesResult rebuild(
          void Function(StopInstancesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StopInstancesResultBuilder toBuilder() =>
      new StopInstancesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StopInstancesResult &&
        stoppingInstances == other.stoppingInstances;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stoppingInstances.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StopInstancesResultBuilder
    implements Builder<StopInstancesResult, StopInstancesResultBuilder> {
  _$StopInstancesResult? _$v;

  _i2.ListBuilder<InstanceStateChange>? _stoppingInstances;
  _i2.ListBuilder<InstanceStateChange> get stoppingInstances =>
      _$this._stoppingInstances ??= new _i2.ListBuilder<InstanceStateChange>();
  set stoppingInstances(
          _i2.ListBuilder<InstanceStateChange>? stoppingInstances) =>
      _$this._stoppingInstances = stoppingInstances;

  StopInstancesResultBuilder();

  StopInstancesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stoppingInstances = $v.stoppingInstances?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StopInstancesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StopInstancesResult;
  }

  @override
  void update(void Function(StopInstancesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StopInstancesResult build() => _build();

  _$StopInstancesResult _build() {
    _$StopInstancesResult _$result;
    try {
      _$result = _$v ??
          new _$StopInstancesResult._(
              stoppingInstances: _stoppingInstances?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stoppingInstances';
        _stoppingInstances?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StopInstancesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

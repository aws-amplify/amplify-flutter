// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terminate_instances_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TerminateInstancesResult extends TerminateInstancesResult {
  @override
  final _i2.BuiltList<InstanceStateChange>? terminatingInstances;

  factory _$TerminateInstancesResult(
          [void Function(TerminateInstancesResultBuilder)? updates]) =>
      (new TerminateInstancesResultBuilder()..update(updates))._build();

  _$TerminateInstancesResult._({this.terminatingInstances}) : super._();

  @override
  TerminateInstancesResult rebuild(
          void Function(TerminateInstancesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TerminateInstancesResultBuilder toBuilder() =>
      new TerminateInstancesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TerminateInstancesResult &&
        terminatingInstances == other.terminatingInstances;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, terminatingInstances.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TerminateInstancesResultBuilder
    implements
        Builder<TerminateInstancesResult, TerminateInstancesResultBuilder> {
  _$TerminateInstancesResult? _$v;

  _i2.ListBuilder<InstanceStateChange>? _terminatingInstances;
  _i2.ListBuilder<InstanceStateChange> get terminatingInstances =>
      _$this._terminatingInstances ??=
          new _i2.ListBuilder<InstanceStateChange>();
  set terminatingInstances(
          _i2.ListBuilder<InstanceStateChange>? terminatingInstances) =>
      _$this._terminatingInstances = terminatingInstances;

  TerminateInstancesResultBuilder();

  TerminateInstancesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _terminatingInstances = $v.terminatingInstances?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TerminateInstancesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TerminateInstancesResult;
  }

  @override
  void update(void Function(TerminateInstancesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TerminateInstancesResult build() => _build();

  _$TerminateInstancesResult _build() {
    _$TerminateInstancesResult _$result;
    try {
      _$result = _$v ??
          new _$TerminateInstancesResult._(
              terminatingInstances: _terminatingInstances?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'terminatingInstances';
        _terminatingInstances?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TerminateInstancesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

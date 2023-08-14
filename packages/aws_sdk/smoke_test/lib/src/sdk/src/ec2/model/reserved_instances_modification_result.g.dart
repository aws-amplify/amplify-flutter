// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reserved_instances_modification_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReservedInstancesModificationResult
    extends ReservedInstancesModificationResult {
  @override
  final String? reservedInstancesId;
  @override
  final ReservedInstancesConfiguration? targetConfiguration;

  factory _$ReservedInstancesModificationResult(
          [void Function(ReservedInstancesModificationResultBuilder)?
              updates]) =>
      (new ReservedInstancesModificationResultBuilder()..update(updates))
          ._build();

  _$ReservedInstancesModificationResult._(
      {this.reservedInstancesId, this.targetConfiguration})
      : super._();

  @override
  ReservedInstancesModificationResult rebuild(
          void Function(ReservedInstancesModificationResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReservedInstancesModificationResultBuilder toBuilder() =>
      new ReservedInstancesModificationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReservedInstancesModificationResult &&
        reservedInstancesId == other.reservedInstancesId &&
        targetConfiguration == other.targetConfiguration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservedInstancesId.hashCode);
    _$hash = $jc(_$hash, targetConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReservedInstancesModificationResultBuilder
    implements
        Builder<ReservedInstancesModificationResult,
            ReservedInstancesModificationResultBuilder> {
  _$ReservedInstancesModificationResult? _$v;

  String? _reservedInstancesId;
  String? get reservedInstancesId => _$this._reservedInstancesId;
  set reservedInstancesId(String? reservedInstancesId) =>
      _$this._reservedInstancesId = reservedInstancesId;

  ReservedInstancesConfigurationBuilder? _targetConfiguration;
  ReservedInstancesConfigurationBuilder get targetConfiguration =>
      _$this._targetConfiguration ??=
          new ReservedInstancesConfigurationBuilder();
  set targetConfiguration(
          ReservedInstancesConfigurationBuilder? targetConfiguration) =>
      _$this._targetConfiguration = targetConfiguration;

  ReservedInstancesModificationResultBuilder();

  ReservedInstancesModificationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservedInstancesId = $v.reservedInstancesId;
      _targetConfiguration = $v.targetConfiguration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReservedInstancesModificationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReservedInstancesModificationResult;
  }

  @override
  void update(
      void Function(ReservedInstancesModificationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReservedInstancesModificationResult build() => _build();

  _$ReservedInstancesModificationResult _build() {
    _$ReservedInstancesModificationResult _$result;
    try {
      _$result = _$v ??
          new _$ReservedInstancesModificationResult._(
              reservedInstancesId: reservedInstancesId,
              targetConfiguration: _targetConfiguration?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targetConfiguration';
        _targetConfiguration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReservedInstancesModificationResult',
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

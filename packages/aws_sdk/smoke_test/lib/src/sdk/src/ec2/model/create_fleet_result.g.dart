// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_fleet_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateFleetResult extends CreateFleetResult {
  @override
  final String? fleetId;
  @override
  final _i2.BuiltList<CreateFleetError>? errors;
  @override
  final _i2.BuiltList<CreateFleetInstance>? instances;

  factory _$CreateFleetResult(
          [void Function(CreateFleetResultBuilder)? updates]) =>
      (new CreateFleetResultBuilder()..update(updates))._build();

  _$CreateFleetResult._({this.fleetId, this.errors, this.instances})
      : super._();

  @override
  CreateFleetResult rebuild(void Function(CreateFleetResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateFleetResultBuilder toBuilder() =>
      new CreateFleetResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateFleetResult &&
        fleetId == other.fleetId &&
        errors == other.errors &&
        instances == other.instances;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fleetId.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jc(_$hash, instances.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateFleetResultBuilder
    implements Builder<CreateFleetResult, CreateFleetResultBuilder> {
  _$CreateFleetResult? _$v;

  String? _fleetId;
  String? get fleetId => _$this._fleetId;
  set fleetId(String? fleetId) => _$this._fleetId = fleetId;

  _i2.ListBuilder<CreateFleetError>? _errors;
  _i2.ListBuilder<CreateFleetError> get errors =>
      _$this._errors ??= new _i2.ListBuilder<CreateFleetError>();
  set errors(_i2.ListBuilder<CreateFleetError>? errors) =>
      _$this._errors = errors;

  _i2.ListBuilder<CreateFleetInstance>? _instances;
  _i2.ListBuilder<CreateFleetInstance> get instances =>
      _$this._instances ??= new _i2.ListBuilder<CreateFleetInstance>();
  set instances(_i2.ListBuilder<CreateFleetInstance>? instances) =>
      _$this._instances = instances;

  CreateFleetResultBuilder();

  CreateFleetResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fleetId = $v.fleetId;
      _errors = $v.errors?.toBuilder();
      _instances = $v.instances?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateFleetResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateFleetResult;
  }

  @override
  void update(void Function(CreateFleetResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateFleetResult build() => _build();

  _$CreateFleetResult _build() {
    _$CreateFleetResult _$result;
    try {
      _$result = _$v ??
          new _$CreateFleetResult._(
              fleetId: fleetId,
              errors: _errors?.build(),
              instances: _instances?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        _errors?.build();
        _$failedField = 'instances';
        _instances?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateFleetResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

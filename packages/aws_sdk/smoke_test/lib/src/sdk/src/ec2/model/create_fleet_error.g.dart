// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_fleet_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateFleetError extends CreateFleetError {
  @override
  final LaunchTemplateAndOverridesResponse? launchTemplateAndOverrides;
  @override
  final InstanceLifecycle? lifecycle;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  factory _$CreateFleetError(
          [void Function(CreateFleetErrorBuilder)? updates]) =>
      (new CreateFleetErrorBuilder()..update(updates))._build();

  _$CreateFleetError._(
      {this.launchTemplateAndOverrides,
      this.lifecycle,
      this.errorCode,
      this.errorMessage})
      : super._();

  @override
  CreateFleetError rebuild(void Function(CreateFleetErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateFleetErrorBuilder toBuilder() =>
      new CreateFleetErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateFleetError &&
        launchTemplateAndOverrides == other.launchTemplateAndOverrides &&
        lifecycle == other.lifecycle &&
        errorCode == other.errorCode &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, launchTemplateAndOverrides.hashCode);
    _$hash = $jc(_$hash, lifecycle.hashCode);
    _$hash = $jc(_$hash, errorCode.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateFleetErrorBuilder
    implements Builder<CreateFleetError, CreateFleetErrorBuilder> {
  _$CreateFleetError? _$v;

  LaunchTemplateAndOverridesResponseBuilder? _launchTemplateAndOverrides;
  LaunchTemplateAndOverridesResponseBuilder get launchTemplateAndOverrides =>
      _$this._launchTemplateAndOverrides ??=
          new LaunchTemplateAndOverridesResponseBuilder();
  set launchTemplateAndOverrides(
          LaunchTemplateAndOverridesResponseBuilder?
              launchTemplateAndOverrides) =>
      _$this._launchTemplateAndOverrides = launchTemplateAndOverrides;

  InstanceLifecycle? _lifecycle;
  InstanceLifecycle? get lifecycle => _$this._lifecycle;
  set lifecycle(InstanceLifecycle? lifecycle) => _$this._lifecycle = lifecycle;

  String? _errorCode;
  String? get errorCode => _$this._errorCode;
  set errorCode(String? errorCode) => _$this._errorCode = errorCode;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  CreateFleetErrorBuilder();

  CreateFleetErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _launchTemplateAndOverrides = $v.launchTemplateAndOverrides?.toBuilder();
      _lifecycle = $v.lifecycle;
      _errorCode = $v.errorCode;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateFleetError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateFleetError;
  }

  @override
  void update(void Function(CreateFleetErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateFleetError build() => _build();

  _$CreateFleetError _build() {
    _$CreateFleetError _$result;
    try {
      _$result = _$v ??
          new _$CreateFleetError._(
              launchTemplateAndOverrides: _launchTemplateAndOverrides?.build(),
              lifecycle: lifecycle,
              errorCode: errorCode,
              errorMessage: errorMessage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchTemplateAndOverrides';
        _launchTemplateAndOverrides?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateFleetError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

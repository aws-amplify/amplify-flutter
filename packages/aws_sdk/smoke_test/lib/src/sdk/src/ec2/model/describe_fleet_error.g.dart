// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_fleet_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeFleetError extends DescribeFleetError {
  @override
  final LaunchTemplateAndOverridesResponse? launchTemplateAndOverrides;
  @override
  final InstanceLifecycle? lifecycle;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  factory _$DescribeFleetError(
          [void Function(DescribeFleetErrorBuilder)? updates]) =>
      (new DescribeFleetErrorBuilder()..update(updates))._build();

  _$DescribeFleetError._(
      {this.launchTemplateAndOverrides,
      this.lifecycle,
      this.errorCode,
      this.errorMessage})
      : super._();

  @override
  DescribeFleetError rebuild(
          void Function(DescribeFleetErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeFleetErrorBuilder toBuilder() =>
      new DescribeFleetErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeFleetError &&
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

class DescribeFleetErrorBuilder
    implements Builder<DescribeFleetError, DescribeFleetErrorBuilder> {
  _$DescribeFleetError? _$v;

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

  DescribeFleetErrorBuilder();

  DescribeFleetErrorBuilder get _$this {
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
  void replace(DescribeFleetError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeFleetError;
  }

  @override
  void update(void Function(DescribeFleetErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeFleetError build() => _build();

  _$DescribeFleetError _build() {
    _$DescribeFleetError _$result;
    try {
      _$result = _$v ??
          new _$DescribeFleetError._(
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
            r'DescribeFleetError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

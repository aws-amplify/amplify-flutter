// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fleet_launch_template_config_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FleetLaunchTemplateConfigRequest
    extends FleetLaunchTemplateConfigRequest {
  @override
  final FleetLaunchTemplateSpecificationRequest? launchTemplateSpecification;
  @override
  final _i2.BuiltList<FleetLaunchTemplateOverridesRequest>? overrides;

  factory _$FleetLaunchTemplateConfigRequest(
          [void Function(FleetLaunchTemplateConfigRequestBuilder)? updates]) =>
      (new FleetLaunchTemplateConfigRequestBuilder()..update(updates))._build();

  _$FleetLaunchTemplateConfigRequest._(
      {this.launchTemplateSpecification, this.overrides})
      : super._();

  @override
  FleetLaunchTemplateConfigRequest rebuild(
          void Function(FleetLaunchTemplateConfigRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FleetLaunchTemplateConfigRequestBuilder toBuilder() =>
      new FleetLaunchTemplateConfigRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FleetLaunchTemplateConfigRequest &&
        launchTemplateSpecification == other.launchTemplateSpecification &&
        overrides == other.overrides;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, launchTemplateSpecification.hashCode);
    _$hash = $jc(_$hash, overrides.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FleetLaunchTemplateConfigRequestBuilder
    implements
        Builder<FleetLaunchTemplateConfigRequest,
            FleetLaunchTemplateConfigRequestBuilder> {
  _$FleetLaunchTemplateConfigRequest? _$v;

  FleetLaunchTemplateSpecificationRequestBuilder? _launchTemplateSpecification;
  FleetLaunchTemplateSpecificationRequestBuilder
      get launchTemplateSpecification => _$this._launchTemplateSpecification ??=
          new FleetLaunchTemplateSpecificationRequestBuilder();
  set launchTemplateSpecification(
          FleetLaunchTemplateSpecificationRequestBuilder?
              launchTemplateSpecification) =>
      _$this._launchTemplateSpecification = launchTemplateSpecification;

  _i2.ListBuilder<FleetLaunchTemplateOverridesRequest>? _overrides;
  _i2.ListBuilder<FleetLaunchTemplateOverridesRequest> get overrides =>
      _$this._overrides ??=
          new _i2.ListBuilder<FleetLaunchTemplateOverridesRequest>();
  set overrides(
          _i2.ListBuilder<FleetLaunchTemplateOverridesRequest>? overrides) =>
      _$this._overrides = overrides;

  FleetLaunchTemplateConfigRequestBuilder();

  FleetLaunchTemplateConfigRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _launchTemplateSpecification =
          $v.launchTemplateSpecification?.toBuilder();
      _overrides = $v.overrides?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FleetLaunchTemplateConfigRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FleetLaunchTemplateConfigRequest;
  }

  @override
  void update(void Function(FleetLaunchTemplateConfigRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FleetLaunchTemplateConfigRequest build() => _build();

  _$FleetLaunchTemplateConfigRequest _build() {
    _$FleetLaunchTemplateConfigRequest _$result;
    try {
      _$result = _$v ??
          new _$FleetLaunchTemplateConfigRequest._(
              launchTemplateSpecification:
                  _launchTemplateSpecification?.build(),
              overrides: _overrides?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchTemplateSpecification';
        _launchTemplateSpecification?.build();
        _$failedField = 'overrides';
        _overrides?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FleetLaunchTemplateConfigRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

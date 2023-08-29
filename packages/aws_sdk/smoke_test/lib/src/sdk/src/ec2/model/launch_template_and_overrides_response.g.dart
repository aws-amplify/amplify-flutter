// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_and_overrides_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateAndOverridesResponse
    extends LaunchTemplateAndOverridesResponse {
  @override
  final FleetLaunchTemplateSpecification? launchTemplateSpecification;
  @override
  final FleetLaunchTemplateOverrides? overrides;

  factory _$LaunchTemplateAndOverridesResponse(
          [void Function(LaunchTemplateAndOverridesResponseBuilder)?
              updates]) =>
      (new LaunchTemplateAndOverridesResponseBuilder()..update(updates))
          ._build();

  _$LaunchTemplateAndOverridesResponse._(
      {this.launchTemplateSpecification, this.overrides})
      : super._();

  @override
  LaunchTemplateAndOverridesResponse rebuild(
          void Function(LaunchTemplateAndOverridesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateAndOverridesResponseBuilder toBuilder() =>
      new LaunchTemplateAndOverridesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateAndOverridesResponse &&
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

class LaunchTemplateAndOverridesResponseBuilder
    implements
        Builder<LaunchTemplateAndOverridesResponse,
            LaunchTemplateAndOverridesResponseBuilder> {
  _$LaunchTemplateAndOverridesResponse? _$v;

  FleetLaunchTemplateSpecificationBuilder? _launchTemplateSpecification;
  FleetLaunchTemplateSpecificationBuilder get launchTemplateSpecification =>
      _$this._launchTemplateSpecification ??=
          new FleetLaunchTemplateSpecificationBuilder();
  set launchTemplateSpecification(
          FleetLaunchTemplateSpecificationBuilder?
              launchTemplateSpecification) =>
      _$this._launchTemplateSpecification = launchTemplateSpecification;

  FleetLaunchTemplateOverridesBuilder? _overrides;
  FleetLaunchTemplateOverridesBuilder get overrides =>
      _$this._overrides ??= new FleetLaunchTemplateOverridesBuilder();
  set overrides(FleetLaunchTemplateOverridesBuilder? overrides) =>
      _$this._overrides = overrides;

  LaunchTemplateAndOverridesResponseBuilder();

  LaunchTemplateAndOverridesResponseBuilder get _$this {
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
  void replace(LaunchTemplateAndOverridesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateAndOverridesResponse;
  }

  @override
  void update(
      void Function(LaunchTemplateAndOverridesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateAndOverridesResponse build() => _build();

  _$LaunchTemplateAndOverridesResponse _build() {
    _$LaunchTemplateAndOverridesResponse _$result;
    try {
      _$result = _$v ??
          new _$LaunchTemplateAndOverridesResponse._(
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
            r'LaunchTemplateAndOverridesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

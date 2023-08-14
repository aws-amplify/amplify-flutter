// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_launch_template_version_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateLaunchTemplateVersionResult
    extends CreateLaunchTemplateVersionResult {
  @override
  final LaunchTemplateVersion? launchTemplateVersion;
  @override
  final ValidationWarning? warning;

  factory _$CreateLaunchTemplateVersionResult(
          [void Function(CreateLaunchTemplateVersionResultBuilder)? updates]) =>
      (new CreateLaunchTemplateVersionResultBuilder()..update(updates))
          ._build();

  _$CreateLaunchTemplateVersionResult._(
      {this.launchTemplateVersion, this.warning})
      : super._();

  @override
  CreateLaunchTemplateVersionResult rebuild(
          void Function(CreateLaunchTemplateVersionResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLaunchTemplateVersionResultBuilder toBuilder() =>
      new CreateLaunchTemplateVersionResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateLaunchTemplateVersionResult &&
        launchTemplateVersion == other.launchTemplateVersion &&
        warning == other.warning;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, launchTemplateVersion.hashCode);
    _$hash = $jc(_$hash, warning.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateLaunchTemplateVersionResultBuilder
    implements
        Builder<CreateLaunchTemplateVersionResult,
            CreateLaunchTemplateVersionResultBuilder> {
  _$CreateLaunchTemplateVersionResult? _$v;

  LaunchTemplateVersionBuilder? _launchTemplateVersion;
  LaunchTemplateVersionBuilder get launchTemplateVersion =>
      _$this._launchTemplateVersion ??= new LaunchTemplateVersionBuilder();
  set launchTemplateVersion(
          LaunchTemplateVersionBuilder? launchTemplateVersion) =>
      _$this._launchTemplateVersion = launchTemplateVersion;

  ValidationWarningBuilder? _warning;
  ValidationWarningBuilder get warning =>
      _$this._warning ??= new ValidationWarningBuilder();
  set warning(ValidationWarningBuilder? warning) => _$this._warning = warning;

  CreateLaunchTemplateVersionResultBuilder();

  CreateLaunchTemplateVersionResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _launchTemplateVersion = $v.launchTemplateVersion?.toBuilder();
      _warning = $v.warning?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateLaunchTemplateVersionResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateLaunchTemplateVersionResult;
  }

  @override
  void update(
      void Function(CreateLaunchTemplateVersionResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateLaunchTemplateVersionResult build() => _build();

  _$CreateLaunchTemplateVersionResult _build() {
    _$CreateLaunchTemplateVersionResult _$result;
    try {
      _$result = _$v ??
          new _$CreateLaunchTemplateVersionResult._(
              launchTemplateVersion: _launchTemplateVersion?.build(),
              warning: _warning?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchTemplateVersion';
        _launchTemplateVersion?.build();
        _$failedField = 'warning';
        _warning?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateLaunchTemplateVersionResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

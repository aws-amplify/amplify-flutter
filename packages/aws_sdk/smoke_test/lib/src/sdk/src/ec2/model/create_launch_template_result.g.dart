// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_launch_template_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateLaunchTemplateResult extends CreateLaunchTemplateResult {
  @override
  final LaunchTemplate? launchTemplate;
  @override
  final ValidationWarning? warning;

  factory _$CreateLaunchTemplateResult(
          [void Function(CreateLaunchTemplateResultBuilder)? updates]) =>
      (new CreateLaunchTemplateResultBuilder()..update(updates))._build();

  _$CreateLaunchTemplateResult._({this.launchTemplate, this.warning})
      : super._();

  @override
  CreateLaunchTemplateResult rebuild(
          void Function(CreateLaunchTemplateResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLaunchTemplateResultBuilder toBuilder() =>
      new CreateLaunchTemplateResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateLaunchTemplateResult &&
        launchTemplate == other.launchTemplate &&
        warning == other.warning;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, launchTemplate.hashCode);
    _$hash = $jc(_$hash, warning.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateLaunchTemplateResultBuilder
    implements
        Builder<CreateLaunchTemplateResult, CreateLaunchTemplateResultBuilder> {
  _$CreateLaunchTemplateResult? _$v;

  LaunchTemplateBuilder? _launchTemplate;
  LaunchTemplateBuilder get launchTemplate =>
      _$this._launchTemplate ??= new LaunchTemplateBuilder();
  set launchTemplate(LaunchTemplateBuilder? launchTemplate) =>
      _$this._launchTemplate = launchTemplate;

  ValidationWarningBuilder? _warning;
  ValidationWarningBuilder get warning =>
      _$this._warning ??= new ValidationWarningBuilder();
  set warning(ValidationWarningBuilder? warning) => _$this._warning = warning;

  CreateLaunchTemplateResultBuilder();

  CreateLaunchTemplateResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _launchTemplate = $v.launchTemplate?.toBuilder();
      _warning = $v.warning?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateLaunchTemplateResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateLaunchTemplateResult;
  }

  @override
  void update(void Function(CreateLaunchTemplateResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateLaunchTemplateResult build() => _build();

  _$CreateLaunchTemplateResult _build() {
    _$CreateLaunchTemplateResult _$result;
    try {
      _$result = _$v ??
          new _$CreateLaunchTemplateResult._(
              launchTemplate: _launchTemplate?.build(),
              warning: _warning?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchTemplate';
        _launchTemplate?.build();
        _$failedField = 'warning';
        _warning?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateLaunchTemplateResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

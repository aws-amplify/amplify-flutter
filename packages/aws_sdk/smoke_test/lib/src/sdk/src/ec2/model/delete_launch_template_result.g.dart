// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_launch_template_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteLaunchTemplateResult extends DeleteLaunchTemplateResult {
  @override
  final LaunchTemplate? launchTemplate;

  factory _$DeleteLaunchTemplateResult(
          [void Function(DeleteLaunchTemplateResultBuilder)? updates]) =>
      (new DeleteLaunchTemplateResultBuilder()..update(updates))._build();

  _$DeleteLaunchTemplateResult._({this.launchTemplate}) : super._();

  @override
  DeleteLaunchTemplateResult rebuild(
          void Function(DeleteLaunchTemplateResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteLaunchTemplateResultBuilder toBuilder() =>
      new DeleteLaunchTemplateResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteLaunchTemplateResult &&
        launchTemplate == other.launchTemplate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, launchTemplate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteLaunchTemplateResultBuilder
    implements
        Builder<DeleteLaunchTemplateResult, DeleteLaunchTemplateResultBuilder> {
  _$DeleteLaunchTemplateResult? _$v;

  LaunchTemplateBuilder? _launchTemplate;
  LaunchTemplateBuilder get launchTemplate =>
      _$this._launchTemplate ??= new LaunchTemplateBuilder();
  set launchTemplate(LaunchTemplateBuilder? launchTemplate) =>
      _$this._launchTemplate = launchTemplate;

  DeleteLaunchTemplateResultBuilder();

  DeleteLaunchTemplateResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _launchTemplate = $v.launchTemplate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteLaunchTemplateResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteLaunchTemplateResult;
  }

  @override
  void update(void Function(DeleteLaunchTemplateResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteLaunchTemplateResult build() => _build();

  _$DeleteLaunchTemplateResult _build() {
    _$DeleteLaunchTemplateResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteLaunchTemplateResult._(
              launchTemplate: _launchTemplate?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchTemplate';
        _launchTemplate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteLaunchTemplateResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

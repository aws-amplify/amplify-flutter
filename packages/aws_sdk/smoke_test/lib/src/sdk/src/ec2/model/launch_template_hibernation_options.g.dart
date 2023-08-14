// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_hibernation_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateHibernationOptions
    extends LaunchTemplateHibernationOptions {
  @override
  final bool configured;

  factory _$LaunchTemplateHibernationOptions(
          [void Function(LaunchTemplateHibernationOptionsBuilder)? updates]) =>
      (new LaunchTemplateHibernationOptionsBuilder()..update(updates))._build();

  _$LaunchTemplateHibernationOptions._({required this.configured}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configured, r'LaunchTemplateHibernationOptions', 'configured');
  }

  @override
  LaunchTemplateHibernationOptions rebuild(
          void Function(LaunchTemplateHibernationOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateHibernationOptionsBuilder toBuilder() =>
      new LaunchTemplateHibernationOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateHibernationOptions &&
        configured == other.configured;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configured.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplateHibernationOptionsBuilder
    implements
        Builder<LaunchTemplateHibernationOptions,
            LaunchTemplateHibernationOptionsBuilder> {
  _$LaunchTemplateHibernationOptions? _$v;

  bool? _configured;
  bool? get configured => _$this._configured;
  set configured(bool? configured) => _$this._configured = configured;

  LaunchTemplateHibernationOptionsBuilder() {
    LaunchTemplateHibernationOptions._init(this);
  }

  LaunchTemplateHibernationOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configured = $v.configured;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateHibernationOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateHibernationOptions;
  }

  @override
  void update(void Function(LaunchTemplateHibernationOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateHibernationOptions build() => _build();

  _$LaunchTemplateHibernationOptions _build() {
    final _$result = _$v ??
        new _$LaunchTemplateHibernationOptions._(
            configured: BuiltValueNullFieldError.checkNotNull(
                configured, r'LaunchTemplateHibernationOptions', 'configured'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

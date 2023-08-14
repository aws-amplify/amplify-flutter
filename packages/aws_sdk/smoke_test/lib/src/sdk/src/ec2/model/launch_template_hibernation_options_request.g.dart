// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_hibernation_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateHibernationOptionsRequest
    extends LaunchTemplateHibernationOptionsRequest {
  @override
  final bool configured;

  factory _$LaunchTemplateHibernationOptionsRequest(
          [void Function(LaunchTemplateHibernationOptionsRequestBuilder)?
              updates]) =>
      (new LaunchTemplateHibernationOptionsRequestBuilder()..update(updates))
          ._build();

  _$LaunchTemplateHibernationOptionsRequest._({required this.configured})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configured, r'LaunchTemplateHibernationOptionsRequest', 'configured');
  }

  @override
  LaunchTemplateHibernationOptionsRequest rebuild(
          void Function(LaunchTemplateHibernationOptionsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateHibernationOptionsRequestBuilder toBuilder() =>
      new LaunchTemplateHibernationOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateHibernationOptionsRequest &&
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

class LaunchTemplateHibernationOptionsRequestBuilder
    implements
        Builder<LaunchTemplateHibernationOptionsRequest,
            LaunchTemplateHibernationOptionsRequestBuilder> {
  _$LaunchTemplateHibernationOptionsRequest? _$v;

  bool? _configured;
  bool? get configured => _$this._configured;
  set configured(bool? configured) => _$this._configured = configured;

  LaunchTemplateHibernationOptionsRequestBuilder() {
    LaunchTemplateHibernationOptionsRequest._init(this);
  }

  LaunchTemplateHibernationOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configured = $v.configured;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateHibernationOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateHibernationOptionsRequest;
  }

  @override
  void update(
      void Function(LaunchTemplateHibernationOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateHibernationOptionsRequest build() => _build();

  _$LaunchTemplateHibernationOptionsRequest _build() {
    final _$result = _$v ??
        new _$LaunchTemplateHibernationOptionsRequest._(
            configured: BuiltValueNullFieldError.checkNotNull(configured,
                r'LaunchTemplateHibernationOptionsRequest', 'configured'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hibernation_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HibernationOptionsRequest extends HibernationOptionsRequest {
  @override
  final bool configured;

  factory _$HibernationOptionsRequest(
          [void Function(HibernationOptionsRequestBuilder)? updates]) =>
      (new HibernationOptionsRequestBuilder()..update(updates))._build();

  _$HibernationOptionsRequest._({required this.configured}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configured, r'HibernationOptionsRequest', 'configured');
  }

  @override
  HibernationOptionsRequest rebuild(
          void Function(HibernationOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HibernationOptionsRequestBuilder toBuilder() =>
      new HibernationOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HibernationOptionsRequest && configured == other.configured;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configured.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HibernationOptionsRequestBuilder
    implements
        Builder<HibernationOptionsRequest, HibernationOptionsRequestBuilder> {
  _$HibernationOptionsRequest? _$v;

  bool? _configured;
  bool? get configured => _$this._configured;
  set configured(bool? configured) => _$this._configured = configured;

  HibernationOptionsRequestBuilder() {
    HibernationOptionsRequest._init(this);
  }

  HibernationOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configured = $v.configured;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HibernationOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HibernationOptionsRequest;
  }

  @override
  void update(void Function(HibernationOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HibernationOptionsRequest build() => _build();

  _$HibernationOptionsRequest _build() {
    final _$result = _$v ??
        new _$HibernationOptionsRequest._(
            configured: BuiltValueNullFieldError.checkNotNull(
                configured, r'HibernationOptionsRequest', 'configured'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

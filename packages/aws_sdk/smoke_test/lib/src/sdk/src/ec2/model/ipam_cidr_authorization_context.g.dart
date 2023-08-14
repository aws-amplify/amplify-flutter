// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipam_cidr_authorization_context.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IpamCidrAuthorizationContext extends IpamCidrAuthorizationContext {
  @override
  final String? message;
  @override
  final String? signature;

  factory _$IpamCidrAuthorizationContext(
          [void Function(IpamCidrAuthorizationContextBuilder)? updates]) =>
      (new IpamCidrAuthorizationContextBuilder()..update(updates))._build();

  _$IpamCidrAuthorizationContext._({this.message, this.signature}) : super._();

  @override
  IpamCidrAuthorizationContext rebuild(
          void Function(IpamCidrAuthorizationContextBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpamCidrAuthorizationContextBuilder toBuilder() =>
      new IpamCidrAuthorizationContextBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpamCidrAuthorizationContext &&
        message == other.message &&
        signature == other.signature;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, signature.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IpamCidrAuthorizationContextBuilder
    implements
        Builder<IpamCidrAuthorizationContext,
            IpamCidrAuthorizationContextBuilder> {
  _$IpamCidrAuthorizationContext? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _signature;
  String? get signature => _$this._signature;
  set signature(String? signature) => _$this._signature = signature;

  IpamCidrAuthorizationContextBuilder();

  IpamCidrAuthorizationContextBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _signature = $v.signature;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpamCidrAuthorizationContext other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpamCidrAuthorizationContext;
  }

  @override
  void update(void Function(IpamCidrAuthorizationContextBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IpamCidrAuthorizationContext build() => _build();

  _$IpamCidrAuthorizationContext _build() {
    final _$result = _$v ??
        new _$IpamCidrAuthorizationContext._(
            message: message, signature: signature);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

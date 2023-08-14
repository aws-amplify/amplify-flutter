// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cidr_authorization_context.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CidrAuthorizationContext extends CidrAuthorizationContext {
  @override
  final String? message;
  @override
  final String? signature;

  factory _$CidrAuthorizationContext(
          [void Function(CidrAuthorizationContextBuilder)? updates]) =>
      (new CidrAuthorizationContextBuilder()..update(updates))._build();

  _$CidrAuthorizationContext._({this.message, this.signature}) : super._();

  @override
  CidrAuthorizationContext rebuild(
          void Function(CidrAuthorizationContextBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CidrAuthorizationContextBuilder toBuilder() =>
      new CidrAuthorizationContextBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CidrAuthorizationContext &&
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

class CidrAuthorizationContextBuilder
    implements
        Builder<CidrAuthorizationContext, CidrAuthorizationContextBuilder> {
  _$CidrAuthorizationContext? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _signature;
  String? get signature => _$this._signature;
  set signature(String? signature) => _$this._signature = signature;

  CidrAuthorizationContextBuilder();

  CidrAuthorizationContextBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _signature = $v.signature;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CidrAuthorizationContext other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CidrAuthorizationContext;
  }

  @override
  void update(void Function(CidrAuthorizationContextBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CidrAuthorizationContext build() => _build();

  _$CidrAuthorizationContext _build() {
    final _$result = _$v ??
        new _$CidrAuthorizationContext._(
            message: message, signature: signature);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

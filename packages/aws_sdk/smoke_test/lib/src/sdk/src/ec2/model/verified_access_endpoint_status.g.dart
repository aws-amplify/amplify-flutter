// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_access_endpoint_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifiedAccessEndpointStatus extends VerifiedAccessEndpointStatus {
  @override
  final VerifiedAccessEndpointStatusCode? code;
  @override
  final String? message;

  factory _$VerifiedAccessEndpointStatus(
          [void Function(VerifiedAccessEndpointStatusBuilder)? updates]) =>
      (new VerifiedAccessEndpointStatusBuilder()..update(updates))._build();

  _$VerifiedAccessEndpointStatus._({this.code, this.message}) : super._();

  @override
  VerifiedAccessEndpointStatus rebuild(
          void Function(VerifiedAccessEndpointStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedAccessEndpointStatusBuilder toBuilder() =>
      new VerifiedAccessEndpointStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedAccessEndpointStatus &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VerifiedAccessEndpointStatusBuilder
    implements
        Builder<VerifiedAccessEndpointStatus,
            VerifiedAccessEndpointStatusBuilder> {
  _$VerifiedAccessEndpointStatus? _$v;

  VerifiedAccessEndpointStatusCode? _code;
  VerifiedAccessEndpointStatusCode? get code => _$this._code;
  set code(VerifiedAccessEndpointStatusCode? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  VerifiedAccessEndpointStatusBuilder();

  VerifiedAccessEndpointStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifiedAccessEndpointStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedAccessEndpointStatus;
  }

  @override
  void update(void Function(VerifiedAccessEndpointStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifiedAccessEndpointStatus build() => _build();

  _$VerifiedAccessEndpointStatus _build() {
    final _$result = _$v ??
        new _$VerifiedAccessEndpointStatus._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

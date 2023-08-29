// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipam_pool_cidr_failure_reason.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IpamPoolCidrFailureReason extends IpamPoolCidrFailureReason {
  @override
  final IpamPoolCidrFailureCode? code;
  @override
  final String? message;

  factory _$IpamPoolCidrFailureReason(
          [void Function(IpamPoolCidrFailureReasonBuilder)? updates]) =>
      (new IpamPoolCidrFailureReasonBuilder()..update(updates))._build();

  _$IpamPoolCidrFailureReason._({this.code, this.message}) : super._();

  @override
  IpamPoolCidrFailureReason rebuild(
          void Function(IpamPoolCidrFailureReasonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpamPoolCidrFailureReasonBuilder toBuilder() =>
      new IpamPoolCidrFailureReasonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpamPoolCidrFailureReason &&
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

class IpamPoolCidrFailureReasonBuilder
    implements
        Builder<IpamPoolCidrFailureReason, IpamPoolCidrFailureReasonBuilder> {
  _$IpamPoolCidrFailureReason? _$v;

  IpamPoolCidrFailureCode? _code;
  IpamPoolCidrFailureCode? get code => _$this._code;
  set code(IpamPoolCidrFailureCode? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  IpamPoolCidrFailureReasonBuilder();

  IpamPoolCidrFailureReasonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpamPoolCidrFailureReason other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpamPoolCidrFailureReason;
  }

  @override
  void update(void Function(IpamPoolCidrFailureReasonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IpamPoolCidrFailureReason build() => _build();

  _$IpamPoolCidrFailureReason _build() {
    final _$result =
        _$v ?? new _$IpamPoolCidrFailureReason._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

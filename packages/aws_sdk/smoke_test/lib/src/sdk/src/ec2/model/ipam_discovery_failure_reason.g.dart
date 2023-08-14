// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipam_discovery_failure_reason.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IpamDiscoveryFailureReason extends IpamDiscoveryFailureReason {
  @override
  final IpamDiscoveryFailureCode? code;
  @override
  final String? message;

  factory _$IpamDiscoveryFailureReason(
          [void Function(IpamDiscoveryFailureReasonBuilder)? updates]) =>
      (new IpamDiscoveryFailureReasonBuilder()..update(updates))._build();

  _$IpamDiscoveryFailureReason._({this.code, this.message}) : super._();

  @override
  IpamDiscoveryFailureReason rebuild(
          void Function(IpamDiscoveryFailureReasonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpamDiscoveryFailureReasonBuilder toBuilder() =>
      new IpamDiscoveryFailureReasonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpamDiscoveryFailureReason &&
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

class IpamDiscoveryFailureReasonBuilder
    implements
        Builder<IpamDiscoveryFailureReason, IpamDiscoveryFailureReasonBuilder> {
  _$IpamDiscoveryFailureReason? _$v;

  IpamDiscoveryFailureCode? _code;
  IpamDiscoveryFailureCode? get code => _$this._code;
  set code(IpamDiscoveryFailureCode? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  IpamDiscoveryFailureReasonBuilder();

  IpamDiscoveryFailureReasonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpamDiscoveryFailureReason other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpamDiscoveryFailureReason;
  }

  @override
  void update(void Function(IpamDiscoveryFailureReasonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IpamDiscoveryFailureReason build() => _build();

  _$IpamDiscoveryFailureReason _build() {
    final _$result =
        _$v ?? new _$IpamDiscoveryFailureReason._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

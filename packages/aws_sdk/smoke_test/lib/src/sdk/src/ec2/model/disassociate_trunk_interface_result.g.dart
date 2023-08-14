// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_trunk_interface_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateTrunkInterfaceResult
    extends DisassociateTrunkInterfaceResult {
  @override
  final bool return_;
  @override
  final String? clientToken;

  factory _$DisassociateTrunkInterfaceResult(
          [void Function(DisassociateTrunkInterfaceResultBuilder)? updates]) =>
      (new DisassociateTrunkInterfaceResultBuilder()..update(updates))._build();

  _$DisassociateTrunkInterfaceResult._(
      {required this.return_, this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'DisassociateTrunkInterfaceResult', 'return_');
  }

  @override
  DisassociateTrunkInterfaceResult rebuild(
          void Function(DisassociateTrunkInterfaceResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateTrunkInterfaceResultBuilder toBuilder() =>
      new DisassociateTrunkInterfaceResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateTrunkInterfaceResult &&
        return_ == other.return_ &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisassociateTrunkInterfaceResultBuilder
    implements
        Builder<DisassociateTrunkInterfaceResult,
            DisassociateTrunkInterfaceResultBuilder> {
  _$DisassociateTrunkInterfaceResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  DisassociateTrunkInterfaceResultBuilder() {
    DisassociateTrunkInterfaceResult._init(this);
  }

  DisassociateTrunkInterfaceResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateTrunkInterfaceResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateTrunkInterfaceResult;
  }

  @override
  void update(void Function(DisassociateTrunkInterfaceResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateTrunkInterfaceResult build() => _build();

  _$DisassociateTrunkInterfaceResult _build() {
    final _$result = _$v ??
        new _$DisassociateTrunkInterfaceResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'DisassociateTrunkInterfaceResult', 'return_'),
            clientToken: clientToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

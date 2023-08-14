// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_egress_only_internet_gateway_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteEgressOnlyInternetGatewayResult
    extends DeleteEgressOnlyInternetGatewayResult {
  @override
  final bool returnCode;

  factory _$DeleteEgressOnlyInternetGatewayResult(
          [void Function(DeleteEgressOnlyInternetGatewayResultBuilder)?
              updates]) =>
      (new DeleteEgressOnlyInternetGatewayResultBuilder()..update(updates))
          ._build();

  _$DeleteEgressOnlyInternetGatewayResult._({required this.returnCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        returnCode, r'DeleteEgressOnlyInternetGatewayResult', 'returnCode');
  }

  @override
  DeleteEgressOnlyInternetGatewayResult rebuild(
          void Function(DeleteEgressOnlyInternetGatewayResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteEgressOnlyInternetGatewayResultBuilder toBuilder() =>
      new DeleteEgressOnlyInternetGatewayResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteEgressOnlyInternetGatewayResult &&
        returnCode == other.returnCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, returnCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteEgressOnlyInternetGatewayResultBuilder
    implements
        Builder<DeleteEgressOnlyInternetGatewayResult,
            DeleteEgressOnlyInternetGatewayResultBuilder> {
  _$DeleteEgressOnlyInternetGatewayResult? _$v;

  bool? _returnCode;
  bool? get returnCode => _$this._returnCode;
  set returnCode(bool? returnCode) => _$this._returnCode = returnCode;

  DeleteEgressOnlyInternetGatewayResultBuilder() {
    DeleteEgressOnlyInternetGatewayResult._init(this);
  }

  DeleteEgressOnlyInternetGatewayResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _returnCode = $v.returnCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteEgressOnlyInternetGatewayResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteEgressOnlyInternetGatewayResult;
  }

  @override
  void update(
      void Function(DeleteEgressOnlyInternetGatewayResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteEgressOnlyInternetGatewayResult build() => _build();

  _$DeleteEgressOnlyInternetGatewayResult _build() {
    final _$result = _$v ??
        new _$DeleteEgressOnlyInternetGatewayResult._(
            returnCode: BuiltValueNullFieldError.checkNotNull(returnCode,
                r'DeleteEgressOnlyInternetGatewayResult', 'returnCode'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

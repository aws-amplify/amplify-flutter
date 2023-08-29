// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_address_to_vpc_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MoveAddressToVpcResult extends MoveAddressToVpcResult {
  @override
  final String? allocationId;
  @override
  final Status? status;

  factory _$MoveAddressToVpcResult(
          [void Function(MoveAddressToVpcResultBuilder)? updates]) =>
      (new MoveAddressToVpcResultBuilder()..update(updates))._build();

  _$MoveAddressToVpcResult._({this.allocationId, this.status}) : super._();

  @override
  MoveAddressToVpcResult rebuild(
          void Function(MoveAddressToVpcResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MoveAddressToVpcResultBuilder toBuilder() =>
      new MoveAddressToVpcResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoveAddressToVpcResult &&
        allocationId == other.allocationId &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allocationId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MoveAddressToVpcResultBuilder
    implements Builder<MoveAddressToVpcResult, MoveAddressToVpcResultBuilder> {
  _$MoveAddressToVpcResult? _$v;

  String? _allocationId;
  String? get allocationId => _$this._allocationId;
  set allocationId(String? allocationId) => _$this._allocationId = allocationId;

  Status? _status;
  Status? get status => _$this._status;
  set status(Status? status) => _$this._status = status;

  MoveAddressToVpcResultBuilder();

  MoveAddressToVpcResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocationId = $v.allocationId;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MoveAddressToVpcResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MoveAddressToVpcResult;
  }

  @override
  void update(void Function(MoveAddressToVpcResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MoveAddressToVpcResult build() => _build();

  _$MoveAddressToVpcResult _build() {
    final _$result = _$v ??
        new _$MoveAddressToVpcResult._(
            allocationId: allocationId, status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

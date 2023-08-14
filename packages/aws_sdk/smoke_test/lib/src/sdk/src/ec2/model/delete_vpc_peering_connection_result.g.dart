// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_vpc_peering_connection_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVpcPeeringConnectionResult
    extends DeleteVpcPeeringConnectionResult {
  @override
  final bool return_;

  factory _$DeleteVpcPeeringConnectionResult(
          [void Function(DeleteVpcPeeringConnectionResultBuilder)? updates]) =>
      (new DeleteVpcPeeringConnectionResultBuilder()..update(updates))._build();

  _$DeleteVpcPeeringConnectionResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'DeleteVpcPeeringConnectionResult', 'return_');
  }

  @override
  DeleteVpcPeeringConnectionResult rebuild(
          void Function(DeleteVpcPeeringConnectionResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVpcPeeringConnectionResultBuilder toBuilder() =>
      new DeleteVpcPeeringConnectionResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVpcPeeringConnectionResult &&
        return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteVpcPeeringConnectionResultBuilder
    implements
        Builder<DeleteVpcPeeringConnectionResult,
            DeleteVpcPeeringConnectionResultBuilder> {
  _$DeleteVpcPeeringConnectionResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  DeleteVpcPeeringConnectionResultBuilder() {
    DeleteVpcPeeringConnectionResult._init(this);
  }

  DeleteVpcPeeringConnectionResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVpcPeeringConnectionResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVpcPeeringConnectionResult;
  }

  @override
  void update(void Function(DeleteVpcPeeringConnectionResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVpcPeeringConnectionResult build() => _build();

  _$DeleteVpcPeeringConnectionResult _build() {
    final _$result = _$v ??
        new _$DeleteVpcPeeringConnectionResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'DeleteVpcPeeringConnectionResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

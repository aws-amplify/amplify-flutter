// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reject_vpc_peering_connection_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RejectVpcPeeringConnectionResult
    extends RejectVpcPeeringConnectionResult {
  @override
  final bool return_;

  factory _$RejectVpcPeeringConnectionResult(
          [void Function(RejectVpcPeeringConnectionResultBuilder)? updates]) =>
      (new RejectVpcPeeringConnectionResultBuilder()..update(updates))._build();

  _$RejectVpcPeeringConnectionResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'RejectVpcPeeringConnectionResult', 'return_');
  }

  @override
  RejectVpcPeeringConnectionResult rebuild(
          void Function(RejectVpcPeeringConnectionResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RejectVpcPeeringConnectionResultBuilder toBuilder() =>
      new RejectVpcPeeringConnectionResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RejectVpcPeeringConnectionResult &&
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

class RejectVpcPeeringConnectionResultBuilder
    implements
        Builder<RejectVpcPeeringConnectionResult,
            RejectVpcPeeringConnectionResultBuilder> {
  _$RejectVpcPeeringConnectionResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  RejectVpcPeeringConnectionResultBuilder() {
    RejectVpcPeeringConnectionResult._init(this);
  }

  RejectVpcPeeringConnectionResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RejectVpcPeeringConnectionResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RejectVpcPeeringConnectionResult;
  }

  @override
  void update(void Function(RejectVpcPeeringConnectionResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RejectVpcPeeringConnectionResult build() => _build();

  _$RejectVpcPeeringConnectionResult _build() {
    final _$result = _$v ??
        new _$RejectVpcPeeringConnectionResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'RejectVpcPeeringConnectionResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

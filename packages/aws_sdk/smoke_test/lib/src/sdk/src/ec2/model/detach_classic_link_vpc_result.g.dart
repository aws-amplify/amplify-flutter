// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detach_classic_link_vpc_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetachClassicLinkVpcResult extends DetachClassicLinkVpcResult {
  @override
  final bool return_;

  factory _$DetachClassicLinkVpcResult(
          [void Function(DetachClassicLinkVpcResultBuilder)? updates]) =>
      (new DetachClassicLinkVpcResultBuilder()..update(updates))._build();

  _$DetachClassicLinkVpcResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'DetachClassicLinkVpcResult', 'return_');
  }

  @override
  DetachClassicLinkVpcResult rebuild(
          void Function(DetachClassicLinkVpcResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetachClassicLinkVpcResultBuilder toBuilder() =>
      new DetachClassicLinkVpcResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetachClassicLinkVpcResult && return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DetachClassicLinkVpcResultBuilder
    implements
        Builder<DetachClassicLinkVpcResult, DetachClassicLinkVpcResultBuilder> {
  _$DetachClassicLinkVpcResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  DetachClassicLinkVpcResultBuilder() {
    DetachClassicLinkVpcResult._init(this);
  }

  DetachClassicLinkVpcResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetachClassicLinkVpcResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetachClassicLinkVpcResult;
  }

  @override
  void update(void Function(DetachClassicLinkVpcResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetachClassicLinkVpcResult build() => _build();

  _$DetachClassicLinkVpcResult _build() {
    final _$result = _$v ??
        new _$DetachClassicLinkVpcResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'DetachClassicLinkVpcResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

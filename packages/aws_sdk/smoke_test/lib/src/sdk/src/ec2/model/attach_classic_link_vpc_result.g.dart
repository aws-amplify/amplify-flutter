// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attach_classic_link_vpc_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttachClassicLinkVpcResult extends AttachClassicLinkVpcResult {
  @override
  final bool return_;

  factory _$AttachClassicLinkVpcResult(
          [void Function(AttachClassicLinkVpcResultBuilder)? updates]) =>
      (new AttachClassicLinkVpcResultBuilder()..update(updates))._build();

  _$AttachClassicLinkVpcResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'AttachClassicLinkVpcResult', 'return_');
  }

  @override
  AttachClassicLinkVpcResult rebuild(
          void Function(AttachClassicLinkVpcResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachClassicLinkVpcResultBuilder toBuilder() =>
      new AttachClassicLinkVpcResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttachClassicLinkVpcResult && return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AttachClassicLinkVpcResultBuilder
    implements
        Builder<AttachClassicLinkVpcResult, AttachClassicLinkVpcResultBuilder> {
  _$AttachClassicLinkVpcResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  AttachClassicLinkVpcResultBuilder() {
    AttachClassicLinkVpcResult._init(this);
  }

  AttachClassicLinkVpcResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttachClassicLinkVpcResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttachClassicLinkVpcResult;
  }

  @override
  void update(void Function(AttachClassicLinkVpcResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttachClassicLinkVpcResult build() => _build();

  _$AttachClassicLinkVpcResult _build() {
    final _$result = _$v ??
        new _$AttachClassicLinkVpcResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'AttachClassicLinkVpcResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

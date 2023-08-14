// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_vpc_classic_link_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableVpcClassicLinkResult extends DisableVpcClassicLinkResult {
  @override
  final bool return_;

  factory _$DisableVpcClassicLinkResult(
          [void Function(DisableVpcClassicLinkResultBuilder)? updates]) =>
      (new DisableVpcClassicLinkResultBuilder()..update(updates))._build();

  _$DisableVpcClassicLinkResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'DisableVpcClassicLinkResult', 'return_');
  }

  @override
  DisableVpcClassicLinkResult rebuild(
          void Function(DisableVpcClassicLinkResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableVpcClassicLinkResultBuilder toBuilder() =>
      new DisableVpcClassicLinkResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableVpcClassicLinkResult && return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisableVpcClassicLinkResultBuilder
    implements
        Builder<DisableVpcClassicLinkResult,
            DisableVpcClassicLinkResultBuilder> {
  _$DisableVpcClassicLinkResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  DisableVpcClassicLinkResultBuilder() {
    DisableVpcClassicLinkResult._init(this);
  }

  DisableVpcClassicLinkResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableVpcClassicLinkResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableVpcClassicLinkResult;
  }

  @override
  void update(void Function(DisableVpcClassicLinkResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableVpcClassicLinkResult build() => _build();

  _$DisableVpcClassicLinkResult _build() {
    final _$result = _$v ??
        new _$DisableVpcClassicLinkResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'DisableVpcClassicLinkResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

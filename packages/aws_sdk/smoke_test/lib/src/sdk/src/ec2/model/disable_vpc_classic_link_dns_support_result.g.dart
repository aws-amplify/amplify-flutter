// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_vpc_classic_link_dns_support_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableVpcClassicLinkDnsSupportResult
    extends DisableVpcClassicLinkDnsSupportResult {
  @override
  final bool return_;

  factory _$DisableVpcClassicLinkDnsSupportResult(
          [void Function(DisableVpcClassicLinkDnsSupportResultBuilder)?
              updates]) =>
      (new DisableVpcClassicLinkDnsSupportResultBuilder()..update(updates))
          ._build();

  _$DisableVpcClassicLinkDnsSupportResult._({required this.return_})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'DisableVpcClassicLinkDnsSupportResult', 'return_');
  }

  @override
  DisableVpcClassicLinkDnsSupportResult rebuild(
          void Function(DisableVpcClassicLinkDnsSupportResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableVpcClassicLinkDnsSupportResultBuilder toBuilder() =>
      new DisableVpcClassicLinkDnsSupportResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableVpcClassicLinkDnsSupportResult &&
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

class DisableVpcClassicLinkDnsSupportResultBuilder
    implements
        Builder<DisableVpcClassicLinkDnsSupportResult,
            DisableVpcClassicLinkDnsSupportResultBuilder> {
  _$DisableVpcClassicLinkDnsSupportResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  DisableVpcClassicLinkDnsSupportResultBuilder() {
    DisableVpcClassicLinkDnsSupportResult._init(this);
  }

  DisableVpcClassicLinkDnsSupportResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableVpcClassicLinkDnsSupportResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableVpcClassicLinkDnsSupportResult;
  }

  @override
  void update(
      void Function(DisableVpcClassicLinkDnsSupportResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableVpcClassicLinkDnsSupportResult build() => _build();

  _$DisableVpcClassicLinkDnsSupportResult _build() {
    final _$result = _$v ??
        new _$DisableVpcClassicLinkDnsSupportResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'DisableVpcClassicLinkDnsSupportResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

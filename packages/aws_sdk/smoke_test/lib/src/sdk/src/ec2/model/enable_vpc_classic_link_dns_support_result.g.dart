// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_vpc_classic_link_dns_support_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableVpcClassicLinkDnsSupportResult
    extends EnableVpcClassicLinkDnsSupportResult {
  @override
  final bool return_;

  factory _$EnableVpcClassicLinkDnsSupportResult(
          [void Function(EnableVpcClassicLinkDnsSupportResultBuilder)?
              updates]) =>
      (new EnableVpcClassicLinkDnsSupportResultBuilder()..update(updates))
          ._build();

  _$EnableVpcClassicLinkDnsSupportResult._({required this.return_})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'EnableVpcClassicLinkDnsSupportResult', 'return_');
  }

  @override
  EnableVpcClassicLinkDnsSupportResult rebuild(
          void Function(EnableVpcClassicLinkDnsSupportResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableVpcClassicLinkDnsSupportResultBuilder toBuilder() =>
      new EnableVpcClassicLinkDnsSupportResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableVpcClassicLinkDnsSupportResult &&
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

class EnableVpcClassicLinkDnsSupportResultBuilder
    implements
        Builder<EnableVpcClassicLinkDnsSupportResult,
            EnableVpcClassicLinkDnsSupportResultBuilder> {
  _$EnableVpcClassicLinkDnsSupportResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  EnableVpcClassicLinkDnsSupportResultBuilder() {
    EnableVpcClassicLinkDnsSupportResult._init(this);
  }

  EnableVpcClassicLinkDnsSupportResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableVpcClassicLinkDnsSupportResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableVpcClassicLinkDnsSupportResult;
  }

  @override
  void update(
      void Function(EnableVpcClassicLinkDnsSupportResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableVpcClassicLinkDnsSupportResult build() => _build();

  _$EnableVpcClassicLinkDnsSupportResult _build() {
    final _$result = _$v ??
        new _$EnableVpcClassicLinkDnsSupportResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'EnableVpcClassicLinkDnsSupportResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

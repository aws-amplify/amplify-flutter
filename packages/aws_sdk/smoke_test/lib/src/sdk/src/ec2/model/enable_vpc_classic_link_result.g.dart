// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_vpc_classic_link_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableVpcClassicLinkResult extends EnableVpcClassicLinkResult {
  @override
  final bool return_;

  factory _$EnableVpcClassicLinkResult(
          [void Function(EnableVpcClassicLinkResultBuilder)? updates]) =>
      (new EnableVpcClassicLinkResultBuilder()..update(updates))._build();

  _$EnableVpcClassicLinkResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'EnableVpcClassicLinkResult', 'return_');
  }

  @override
  EnableVpcClassicLinkResult rebuild(
          void Function(EnableVpcClassicLinkResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableVpcClassicLinkResultBuilder toBuilder() =>
      new EnableVpcClassicLinkResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableVpcClassicLinkResult && return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnableVpcClassicLinkResultBuilder
    implements
        Builder<EnableVpcClassicLinkResult, EnableVpcClassicLinkResultBuilder> {
  _$EnableVpcClassicLinkResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  EnableVpcClassicLinkResultBuilder() {
    EnableVpcClassicLinkResult._init(this);
  }

  EnableVpcClassicLinkResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableVpcClassicLinkResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableVpcClassicLinkResult;
  }

  @override
  void update(void Function(EnableVpcClassicLinkResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableVpcClassicLinkResult build() => _build();

  _$EnableVpcClassicLinkResult _build() {
    final _$result = _$v ??
        new _$EnableVpcClassicLinkResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'EnableVpcClassicLinkResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

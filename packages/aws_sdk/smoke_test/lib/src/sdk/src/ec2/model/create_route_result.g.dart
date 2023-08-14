// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_route_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateRouteResult extends CreateRouteResult {
  @override
  final bool return_;

  factory _$CreateRouteResult(
          [void Function(CreateRouteResultBuilder)? updates]) =>
      (new CreateRouteResultBuilder()..update(updates))._build();

  _$CreateRouteResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'CreateRouteResult', 'return_');
  }

  @override
  CreateRouteResult rebuild(void Function(CreateRouteResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateRouteResultBuilder toBuilder() =>
      new CreateRouteResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateRouteResult && return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateRouteResultBuilder
    implements Builder<CreateRouteResult, CreateRouteResultBuilder> {
  _$CreateRouteResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  CreateRouteResultBuilder() {
    CreateRouteResult._init(this);
  }

  CreateRouteResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateRouteResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateRouteResult;
  }

  @override
  void update(void Function(CreateRouteResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateRouteResult build() => _build();

  _$CreateRouteResult _build() {
    final _$result = _$v ??
        new _$CreateRouteResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'CreateRouteResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

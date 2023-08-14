// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_coip_cidr_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteCoipCidrResult extends DeleteCoipCidrResult {
  @override
  final CoipCidr? coipCidr;

  factory _$DeleteCoipCidrResult(
          [void Function(DeleteCoipCidrResultBuilder)? updates]) =>
      (new DeleteCoipCidrResultBuilder()..update(updates))._build();

  _$DeleteCoipCidrResult._({this.coipCidr}) : super._();

  @override
  DeleteCoipCidrResult rebuild(
          void Function(DeleteCoipCidrResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteCoipCidrResultBuilder toBuilder() =>
      new DeleteCoipCidrResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteCoipCidrResult && coipCidr == other.coipCidr;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, coipCidr.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteCoipCidrResultBuilder
    implements Builder<DeleteCoipCidrResult, DeleteCoipCidrResultBuilder> {
  _$DeleteCoipCidrResult? _$v;

  CoipCidrBuilder? _coipCidr;
  CoipCidrBuilder get coipCidr => _$this._coipCidr ??= new CoipCidrBuilder();
  set coipCidr(CoipCidrBuilder? coipCidr) => _$this._coipCidr = coipCidr;

  DeleteCoipCidrResultBuilder();

  DeleteCoipCidrResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coipCidr = $v.coipCidr?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteCoipCidrResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteCoipCidrResult;
  }

  @override
  void update(void Function(DeleteCoipCidrResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteCoipCidrResult build() => _build();

  _$DeleteCoipCidrResult _build() {
    _$DeleteCoipCidrResult _$result;
    try {
      _$result =
          _$v ?? new _$DeleteCoipCidrResult._(coipCidr: _coipCidr?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coipCidr';
        _coipCidr?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteCoipCidrResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

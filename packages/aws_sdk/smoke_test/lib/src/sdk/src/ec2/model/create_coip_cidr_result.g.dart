// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_coip_cidr_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCoipCidrResult extends CreateCoipCidrResult {
  @override
  final CoipCidr? coipCidr;

  factory _$CreateCoipCidrResult(
          [void Function(CreateCoipCidrResultBuilder)? updates]) =>
      (new CreateCoipCidrResultBuilder()..update(updates))._build();

  _$CreateCoipCidrResult._({this.coipCidr}) : super._();

  @override
  CreateCoipCidrResult rebuild(
          void Function(CreateCoipCidrResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCoipCidrResultBuilder toBuilder() =>
      new CreateCoipCidrResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCoipCidrResult && coipCidr == other.coipCidr;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, coipCidr.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateCoipCidrResultBuilder
    implements Builder<CreateCoipCidrResult, CreateCoipCidrResultBuilder> {
  _$CreateCoipCidrResult? _$v;

  CoipCidrBuilder? _coipCidr;
  CoipCidrBuilder get coipCidr => _$this._coipCidr ??= new CoipCidrBuilder();
  set coipCidr(CoipCidrBuilder? coipCidr) => _$this._coipCidr = coipCidr;

  CreateCoipCidrResultBuilder();

  CreateCoipCidrResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coipCidr = $v.coipCidr?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCoipCidrResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateCoipCidrResult;
  }

  @override
  void update(void Function(CreateCoipCidrResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCoipCidrResult build() => _build();

  _$CreateCoipCidrResult _build() {
    _$CreateCoipCidrResult _$result;
    try {
      _$result =
          _$v ?? new _$CreateCoipCidrResult._(coipCidr: _coipCidr?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coipCidr';
        _coipCidr?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateCoipCidrResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

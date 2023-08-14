// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_default_subnet_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateDefaultSubnetResult extends CreateDefaultSubnetResult {
  @override
  final Subnet? subnet;

  factory _$CreateDefaultSubnetResult(
          [void Function(CreateDefaultSubnetResultBuilder)? updates]) =>
      (new CreateDefaultSubnetResultBuilder()..update(updates))._build();

  _$CreateDefaultSubnetResult._({this.subnet}) : super._();

  @override
  CreateDefaultSubnetResult rebuild(
          void Function(CreateDefaultSubnetResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateDefaultSubnetResultBuilder toBuilder() =>
      new CreateDefaultSubnetResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateDefaultSubnetResult && subnet == other.subnet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subnet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateDefaultSubnetResultBuilder
    implements
        Builder<CreateDefaultSubnetResult, CreateDefaultSubnetResultBuilder> {
  _$CreateDefaultSubnetResult? _$v;

  SubnetBuilder? _subnet;
  SubnetBuilder get subnet => _$this._subnet ??= new SubnetBuilder();
  set subnet(SubnetBuilder? subnet) => _$this._subnet = subnet;

  CreateDefaultSubnetResultBuilder();

  CreateDefaultSubnetResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subnet = $v.subnet?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateDefaultSubnetResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateDefaultSubnetResult;
  }

  @override
  void update(void Function(CreateDefaultSubnetResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateDefaultSubnetResult build() => _build();

  _$CreateDefaultSubnetResult _build() {
    _$CreateDefaultSubnetResult _$result;
    try {
      _$result =
          _$v ?? new _$CreateDefaultSubnetResult._(subnet: _subnet?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subnet';
        _subnet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateDefaultSubnetResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

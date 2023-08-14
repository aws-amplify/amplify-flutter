// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_subnet_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateSubnetResult extends CreateSubnetResult {
  @override
  final Subnet? subnet;

  factory _$CreateSubnetResult(
          [void Function(CreateSubnetResultBuilder)? updates]) =>
      (new CreateSubnetResultBuilder()..update(updates))._build();

  _$CreateSubnetResult._({this.subnet}) : super._();

  @override
  CreateSubnetResult rebuild(
          void Function(CreateSubnetResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateSubnetResultBuilder toBuilder() =>
      new CreateSubnetResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSubnetResult && subnet == other.subnet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subnet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateSubnetResultBuilder
    implements Builder<CreateSubnetResult, CreateSubnetResultBuilder> {
  _$CreateSubnetResult? _$v;

  SubnetBuilder? _subnet;
  SubnetBuilder get subnet => _$this._subnet ??= new SubnetBuilder();
  set subnet(SubnetBuilder? subnet) => _$this._subnet = subnet;

  CreateSubnetResultBuilder();

  CreateSubnetResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subnet = $v.subnet?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSubnetResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateSubnetResult;
  }

  @override
  void update(void Function(CreateSubnetResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateSubnetResult build() => _build();

  _$CreateSubnetResult _build() {
    _$CreateSubnetResult _$result;
    try {
      _$result = _$v ?? new _$CreateSubnetResult._(subnet: _subnet?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subnet';
        _subnet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateSubnetResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

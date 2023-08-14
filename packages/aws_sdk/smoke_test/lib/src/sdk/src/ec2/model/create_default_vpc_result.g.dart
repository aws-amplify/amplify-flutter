// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_default_vpc_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateDefaultVpcResult extends CreateDefaultVpcResult {
  @override
  final Vpc? vpc;

  factory _$CreateDefaultVpcResult(
          [void Function(CreateDefaultVpcResultBuilder)? updates]) =>
      (new CreateDefaultVpcResultBuilder()..update(updates))._build();

  _$CreateDefaultVpcResult._({this.vpc}) : super._();

  @override
  CreateDefaultVpcResult rebuild(
          void Function(CreateDefaultVpcResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateDefaultVpcResultBuilder toBuilder() =>
      new CreateDefaultVpcResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateDefaultVpcResult && vpc == other.vpc;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpc.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateDefaultVpcResultBuilder
    implements Builder<CreateDefaultVpcResult, CreateDefaultVpcResultBuilder> {
  _$CreateDefaultVpcResult? _$v;

  VpcBuilder? _vpc;
  VpcBuilder get vpc => _$this._vpc ??= new VpcBuilder();
  set vpc(VpcBuilder? vpc) => _$this._vpc = vpc;

  CreateDefaultVpcResultBuilder();

  CreateDefaultVpcResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpc = $v.vpc?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateDefaultVpcResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateDefaultVpcResult;
  }

  @override
  void update(void Function(CreateDefaultVpcResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateDefaultVpcResult build() => _build();

  _$CreateDefaultVpcResult _build() {
    _$CreateDefaultVpcResult _$result;
    try {
      _$result = _$v ?? new _$CreateDefaultVpcResult._(vpc: _vpc?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpc';
        _vpc?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateDefaultVpcResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_default_vpc_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateDefaultVpcRequest extends CreateDefaultVpcRequest {
  @override
  final bool dryRun;

  factory _$CreateDefaultVpcRequest(
          [void Function(CreateDefaultVpcRequestBuilder)? updates]) =>
      (new CreateDefaultVpcRequestBuilder()..update(updates))._build();

  _$CreateDefaultVpcRequest._({required this.dryRun}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateDefaultVpcRequest', 'dryRun');
  }

  @override
  CreateDefaultVpcRequest rebuild(
          void Function(CreateDefaultVpcRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateDefaultVpcRequestBuilder toBuilder() =>
      new CreateDefaultVpcRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateDefaultVpcRequest && dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateDefaultVpcRequestBuilder
    implements
        Builder<CreateDefaultVpcRequest, CreateDefaultVpcRequestBuilder> {
  _$CreateDefaultVpcRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateDefaultVpcRequestBuilder() {
    CreateDefaultVpcRequest._init(this);
  }

  CreateDefaultVpcRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateDefaultVpcRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateDefaultVpcRequest;
  }

  @override
  void update(void Function(CreateDefaultVpcRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateDefaultVpcRequest build() => _build();

  _$CreateDefaultVpcRequest _build() {
    final _$result = _$v ??
        new _$CreateDefaultVpcRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'CreateDefaultVpcRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_public_ipv4_pool_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePublicIpv4PoolRequest extends CreatePublicIpv4PoolRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;

  factory _$CreatePublicIpv4PoolRequest(
          [void Function(CreatePublicIpv4PoolRequestBuilder)? updates]) =>
      (new CreatePublicIpv4PoolRequestBuilder()..update(updates))._build();

  _$CreatePublicIpv4PoolRequest._(
      {required this.dryRun, this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreatePublicIpv4PoolRequest', 'dryRun');
  }

  @override
  CreatePublicIpv4PoolRequest rebuild(
          void Function(CreatePublicIpv4PoolRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePublicIpv4PoolRequestBuilder toBuilder() =>
      new CreatePublicIpv4PoolRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePublicIpv4PoolRequest &&
        dryRun == other.dryRun &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreatePublicIpv4PoolRequestBuilder
    implements
        Builder<CreatePublicIpv4PoolRequest,
            CreatePublicIpv4PoolRequestBuilder> {
  _$CreatePublicIpv4PoolRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  CreatePublicIpv4PoolRequestBuilder() {
    CreatePublicIpv4PoolRequest._init(this);
  }

  CreatePublicIpv4PoolRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePublicIpv4PoolRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatePublicIpv4PoolRequest;
  }

  @override
  void update(void Function(CreatePublicIpv4PoolRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePublicIpv4PoolRequest build() => _build();

  _$CreatePublicIpv4PoolRequest _build() {
    _$CreatePublicIpv4PoolRequest _$result;
    try {
      _$result = _$v ??
          new _$CreatePublicIpv4PoolRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreatePublicIpv4PoolRequest', 'dryRun'),
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreatePublicIpv4PoolRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

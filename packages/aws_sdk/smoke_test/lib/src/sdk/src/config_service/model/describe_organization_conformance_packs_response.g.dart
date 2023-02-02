// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_organization_conformance_packs_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeOrganizationConformancePacksResponse
    extends DescribeOrganizationConformancePacksResponse {
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<_i2.OrganizationConformancePack>?
      organizationConformancePacks;

  factory _$DescribeOrganizationConformancePacksResponse(
          [void Function(DescribeOrganizationConformancePacksResponseBuilder)?
              updates]) =>
      (new DescribeOrganizationConformancePacksResponseBuilder()
            ..update(updates))
          ._build();

  _$DescribeOrganizationConformancePacksResponse._(
      {this.nextToken, this.organizationConformancePacks})
      : super._();

  @override
  DescribeOrganizationConformancePacksResponse rebuild(
          void Function(DescribeOrganizationConformancePacksResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeOrganizationConformancePacksResponseBuilder toBuilder() =>
      new DescribeOrganizationConformancePacksResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeOrganizationConformancePacksResponse &&
        nextToken == other.nextToken &&
        organizationConformancePacks == other.organizationConformancePacks;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, organizationConformancePacks.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeOrganizationConformancePacksResponseBuilder
    implements
        Builder<DescribeOrganizationConformancePacksResponse,
            DescribeOrganizationConformancePacksResponseBuilder> {
  _$DescribeOrganizationConformancePacksResponse? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<_i2.OrganizationConformancePack>?
      _organizationConformancePacks;
  _i3.ListBuilder<_i2.OrganizationConformancePack>
      get organizationConformancePacks =>
          _$this._organizationConformancePacks ??=
              new _i3.ListBuilder<_i2.OrganizationConformancePack>();
  set organizationConformancePacks(
          _i3.ListBuilder<_i2.OrganizationConformancePack>?
              organizationConformancePacks) =>
      _$this._organizationConformancePacks = organizationConformancePacks;

  DescribeOrganizationConformancePacksResponseBuilder() {
    DescribeOrganizationConformancePacksResponse._init(this);
  }

  DescribeOrganizationConformancePacksResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _organizationConformancePacks =
          $v.organizationConformancePacks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeOrganizationConformancePacksResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeOrganizationConformancePacksResponse;
  }

  @override
  void update(
      void Function(DescribeOrganizationConformancePacksResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeOrganizationConformancePacksResponse build() => _build();

  _$DescribeOrganizationConformancePacksResponse _build() {
    _$DescribeOrganizationConformancePacksResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeOrganizationConformancePacksResponse._(
              nextToken: nextToken,
              organizationConformancePacks:
                  _organizationConformancePacks?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'organizationConformancePacks';
        _organizationConformancePacks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeOrganizationConformancePacksResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

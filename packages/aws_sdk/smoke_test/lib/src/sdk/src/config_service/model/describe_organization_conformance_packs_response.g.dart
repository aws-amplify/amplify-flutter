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
    return $jf(
        $jc($jc(0, nextToken.hashCode), organizationConformancePacks.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

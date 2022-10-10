// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_conformance_packs_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConformancePacksResponse
    extends DescribeConformancePacksResponse {
  @override
  final _i3.BuiltList<_i2.ConformancePackDetail>? conformancePackDetails;
  @override
  final String? nextToken;

  factory _$DescribeConformancePacksResponse(
          [void Function(DescribeConformancePacksResponseBuilder)? updates]) =>
      (new DescribeConformancePacksResponseBuilder()..update(updates))._build();

  _$DescribeConformancePacksResponse._(
      {this.conformancePackDetails, this.nextToken})
      : super._();

  @override
  DescribeConformancePacksResponse rebuild(
          void Function(DescribeConformancePacksResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeConformancePacksResponseBuilder toBuilder() =>
      new DescribeConformancePacksResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeConformancePacksResponse &&
        conformancePackDetails == other.conformancePackDetails &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, conformancePackDetails.hashCode), nextToken.hashCode));
  }
}

class DescribeConformancePacksResponseBuilder
    implements
        Builder<DescribeConformancePacksResponse,
            DescribeConformancePacksResponseBuilder> {
  _$DescribeConformancePacksResponse? _$v;

  _i3.ListBuilder<_i2.ConformancePackDetail>? _conformancePackDetails;
  _i3.ListBuilder<_i2.ConformancePackDetail> get conformancePackDetails =>
      _$this._conformancePackDetails ??=
          new _i3.ListBuilder<_i2.ConformancePackDetail>();
  set conformancePackDetails(
          _i3.ListBuilder<_i2.ConformancePackDetail>? conformancePackDetails) =>
      _$this._conformancePackDetails = conformancePackDetails;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeConformancePacksResponseBuilder() {
    DescribeConformancePacksResponse._init(this);
  }

  DescribeConformancePacksResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackDetails = $v.conformancePackDetails?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeConformancePacksResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeConformancePacksResponse;
  }

  @override
  void update(void Function(DescribeConformancePacksResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeConformancePacksResponse build() => _build();

  _$DescribeConformancePacksResponse _build() {
    _$DescribeConformancePacksResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeConformancePacksResponse._(
              conformancePackDetails: _conformancePackDetails?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conformancePackDetails';
        _conformancePackDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeConformancePacksResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

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
    var _$hash = 0;
    _$hash = $jc(_$hash, conformancePackDetails.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

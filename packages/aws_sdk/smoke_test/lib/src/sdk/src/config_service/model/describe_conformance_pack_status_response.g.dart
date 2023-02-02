// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_conformance_pack_status_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConformancePackStatusResponse
    extends DescribeConformancePackStatusResponse {
  @override
  final _i3.BuiltList<_i2.ConformancePackStatusDetail>?
      conformancePackStatusDetails;
  @override
  final String? nextToken;

  factory _$DescribeConformancePackStatusResponse(
          [void Function(DescribeConformancePackStatusResponseBuilder)?
              updates]) =>
      (new DescribeConformancePackStatusResponseBuilder()..update(updates))
          ._build();

  _$DescribeConformancePackStatusResponse._(
      {this.conformancePackStatusDetails, this.nextToken})
      : super._();

  @override
  DescribeConformancePackStatusResponse rebuild(
          void Function(DescribeConformancePackStatusResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeConformancePackStatusResponseBuilder toBuilder() =>
      new DescribeConformancePackStatusResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeConformancePackStatusResponse &&
        conformancePackStatusDetails == other.conformancePackStatusDetails &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conformancePackStatusDetails.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeConformancePackStatusResponseBuilder
    implements
        Builder<DescribeConformancePackStatusResponse,
            DescribeConformancePackStatusResponseBuilder> {
  _$DescribeConformancePackStatusResponse? _$v;

  _i3.ListBuilder<_i2.ConformancePackStatusDetail>?
      _conformancePackStatusDetails;
  _i3.ListBuilder<_i2.ConformancePackStatusDetail>
      get conformancePackStatusDetails =>
          _$this._conformancePackStatusDetails ??=
              new _i3.ListBuilder<_i2.ConformancePackStatusDetail>();
  set conformancePackStatusDetails(
          _i3.ListBuilder<_i2.ConformancePackStatusDetail>?
              conformancePackStatusDetails) =>
      _$this._conformancePackStatusDetails = conformancePackStatusDetails;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeConformancePackStatusResponseBuilder() {
    DescribeConformancePackStatusResponse._init(this);
  }

  DescribeConformancePackStatusResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackStatusDetails =
          $v.conformancePackStatusDetails?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeConformancePackStatusResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeConformancePackStatusResponse;
  }

  @override
  void update(
      void Function(DescribeConformancePackStatusResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeConformancePackStatusResponse build() => _build();

  _$DescribeConformancePackStatusResponse _build() {
    _$DescribeConformancePackStatusResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeConformancePackStatusResponse._(
              conformancePackStatusDetails:
                  _conformancePackStatusDetails?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conformancePackStatusDetails';
        _conformancePackStatusDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeConformancePackStatusResponse',
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

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
    return $jf(
        $jc($jc(0, conformancePackStatusDetails.hashCode), nextToken.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

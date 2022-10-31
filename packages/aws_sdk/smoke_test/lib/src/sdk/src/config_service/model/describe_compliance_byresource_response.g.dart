// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_compliance_byresource_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeComplianceByresourceResponse
    extends DescribeComplianceByresourceResponse {
  @override
  final _i2.BuiltList<_i3.ComplianceByresource>? complianceByresources;
  @override
  final String? nextToken;

  factory _$DescribeComplianceByresourceResponse(
          [void Function(DescribeComplianceByresourceResponseBuilder)?
              updates]) =>
      (new DescribeComplianceByresourceResponseBuilder()..update(updates))
          ._build();

  _$DescribeComplianceByresourceResponse._(
      {this.complianceByresources, this.nextToken})
      : super._();

  @override
  DescribeComplianceByresourceResponse rebuild(
          void Function(DescribeComplianceByresourceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeComplianceByresourceResponseBuilder toBuilder() =>
      new DescribeComplianceByresourceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeComplianceByresourceResponse &&
        complianceByresources == other.complianceByresources &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, complianceByresources.hashCode), nextToken.hashCode));
  }
}

class DescribeComplianceByresourceResponseBuilder
    implements
        Builder<DescribeComplianceByresourceResponse,
            DescribeComplianceByresourceResponseBuilder> {
  _$DescribeComplianceByresourceResponse? _$v;

  _i2.ListBuilder<_i3.ComplianceByresource>? _complianceByresources;
  _i2.ListBuilder<_i3.ComplianceByresource> get complianceByresources =>
      _$this._complianceByresources ??=
          new _i2.ListBuilder<_i3.ComplianceByresource>();
  set complianceByresources(
          _i2.ListBuilder<_i3.ComplianceByresource>? complianceByresources) =>
      _$this._complianceByresources = complianceByresources;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeComplianceByresourceResponseBuilder() {
    DescribeComplianceByresourceResponse._init(this);
  }

  DescribeComplianceByresourceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceByresources = $v.complianceByresources?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeComplianceByresourceResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeComplianceByresourceResponse;
  }

  @override
  void update(
      void Function(DescribeComplianceByresourceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeComplianceByresourceResponse build() => _build();

  _$DescribeComplianceByresourceResponse _build() {
    _$DescribeComplianceByresourceResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeComplianceByresourceResponse._(
              complianceByresources: _complianceByresources?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'complianceByresources';
        _complianceByresources?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeComplianceByresourceResponse',
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

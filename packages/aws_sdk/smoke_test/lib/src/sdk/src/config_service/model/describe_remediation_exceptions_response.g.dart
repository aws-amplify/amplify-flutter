// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_remediation_exceptions_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeRemediationExceptionsResponse
    extends DescribeRemediationExceptionsResponse {
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<_i2.RemediationException>? remediationExceptions;

  factory _$DescribeRemediationExceptionsResponse(
          [void Function(DescribeRemediationExceptionsResponseBuilder)?
              updates]) =>
      (new DescribeRemediationExceptionsResponseBuilder()..update(updates))
          ._build();

  _$DescribeRemediationExceptionsResponse._(
      {this.nextToken, this.remediationExceptions})
      : super._();

  @override
  DescribeRemediationExceptionsResponse rebuild(
          void Function(DescribeRemediationExceptionsResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeRemediationExceptionsResponseBuilder toBuilder() =>
      new DescribeRemediationExceptionsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeRemediationExceptionsResponse &&
        nextToken == other.nextToken &&
        remediationExceptions == other.remediationExceptions;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, nextToken.hashCode), remediationExceptions.hashCode));
  }
}

class DescribeRemediationExceptionsResponseBuilder
    implements
        Builder<DescribeRemediationExceptionsResponse,
            DescribeRemediationExceptionsResponseBuilder> {
  _$DescribeRemediationExceptionsResponse? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<_i2.RemediationException>? _remediationExceptions;
  _i3.ListBuilder<_i2.RemediationException> get remediationExceptions =>
      _$this._remediationExceptions ??=
          new _i3.ListBuilder<_i2.RemediationException>();
  set remediationExceptions(
          _i3.ListBuilder<_i2.RemediationException>? remediationExceptions) =>
      _$this._remediationExceptions = remediationExceptions;

  DescribeRemediationExceptionsResponseBuilder() {
    DescribeRemediationExceptionsResponse._init(this);
  }

  DescribeRemediationExceptionsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _remediationExceptions = $v.remediationExceptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeRemediationExceptionsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeRemediationExceptionsResponse;
  }

  @override
  void update(
      void Function(DescribeRemediationExceptionsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeRemediationExceptionsResponse build() => _build();

  _$DescribeRemediationExceptionsResponse _build() {
    _$DescribeRemediationExceptionsResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeRemediationExceptionsResponse._(
              nextToken: nextToken,
              remediationExceptions: _remediationExceptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'remediationExceptions';
        _remediationExceptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeRemediationExceptionsResponse',
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

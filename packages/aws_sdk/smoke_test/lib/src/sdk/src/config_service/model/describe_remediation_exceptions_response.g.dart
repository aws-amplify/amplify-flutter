// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_remediation_exceptions_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeRemediationExceptionsResponse
    extends DescribeRemediationExceptionsResponse {
  @override
  final _i3.BuiltList<_i2.RemediationException>? remediationExceptions;
  @override
  final String? nextToken;

  factory _$DescribeRemediationExceptionsResponse(
          [void Function(DescribeRemediationExceptionsResponseBuilder)?
              updates]) =>
      (new DescribeRemediationExceptionsResponseBuilder()..update(updates))
          ._build();

  _$DescribeRemediationExceptionsResponse._(
      {this.remediationExceptions, this.nextToken})
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
        remediationExceptions == other.remediationExceptions &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, remediationExceptions.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeRemediationExceptionsResponseBuilder
    implements
        Builder<DescribeRemediationExceptionsResponse,
            DescribeRemediationExceptionsResponseBuilder> {
  _$DescribeRemediationExceptionsResponse? _$v;

  _i3.ListBuilder<_i2.RemediationException>? _remediationExceptions;
  _i3.ListBuilder<_i2.RemediationException> get remediationExceptions =>
      _$this._remediationExceptions ??=
          new _i3.ListBuilder<_i2.RemediationException>();
  set remediationExceptions(
          _i3.ListBuilder<_i2.RemediationException>? remediationExceptions) =>
      _$this._remediationExceptions = remediationExceptions;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeRemediationExceptionsResponseBuilder() {
    DescribeRemediationExceptionsResponse._init(this);
  }

  DescribeRemediationExceptionsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _remediationExceptions = $v.remediationExceptions?.toBuilder();
      _nextToken = $v.nextToken;
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
              remediationExceptions: _remediationExceptions?.build(),
              nextToken: nextToken);
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

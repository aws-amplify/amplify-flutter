// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_remediation_execution_status_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeRemediationExecutionStatusResponse
    extends DescribeRemediationExecutionStatusResponse {
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<_i2.RemediationExecutionStatus>?
      remediationExecutionStatuses;

  factory _$DescribeRemediationExecutionStatusResponse(
          [void Function(DescribeRemediationExecutionStatusResponseBuilder)?
              updates]) =>
      (new DescribeRemediationExecutionStatusResponseBuilder()..update(updates))
          ._build();

  _$DescribeRemediationExecutionStatusResponse._(
      {this.nextToken, this.remediationExecutionStatuses})
      : super._();

  @override
  DescribeRemediationExecutionStatusResponse rebuild(
          void Function(DescribeRemediationExecutionStatusResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeRemediationExecutionStatusResponseBuilder toBuilder() =>
      new DescribeRemediationExecutionStatusResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeRemediationExecutionStatusResponse &&
        nextToken == other.nextToken &&
        remediationExecutionStatuses == other.remediationExecutionStatuses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, remediationExecutionStatuses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeRemediationExecutionStatusResponseBuilder
    implements
        Builder<DescribeRemediationExecutionStatusResponse,
            DescribeRemediationExecutionStatusResponseBuilder> {
  _$DescribeRemediationExecutionStatusResponse? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<_i2.RemediationExecutionStatus>?
      _remediationExecutionStatuses;
  _i3.ListBuilder<_i2.RemediationExecutionStatus>
      get remediationExecutionStatuses =>
          _$this._remediationExecutionStatuses ??=
              new _i3.ListBuilder<_i2.RemediationExecutionStatus>();
  set remediationExecutionStatuses(
          _i3.ListBuilder<_i2.RemediationExecutionStatus>?
              remediationExecutionStatuses) =>
      _$this._remediationExecutionStatuses = remediationExecutionStatuses;

  DescribeRemediationExecutionStatusResponseBuilder() {
    DescribeRemediationExecutionStatusResponse._init(this);
  }

  DescribeRemediationExecutionStatusResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _remediationExecutionStatuses =
          $v.remediationExecutionStatuses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeRemediationExecutionStatusResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeRemediationExecutionStatusResponse;
  }

  @override
  void update(
      void Function(DescribeRemediationExecutionStatusResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeRemediationExecutionStatusResponse build() => _build();

  _$DescribeRemediationExecutionStatusResponse _build() {
    _$DescribeRemediationExecutionStatusResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeRemediationExecutionStatusResponse._(
              nextToken: nextToken,
              remediationExecutionStatuses:
                  _remediationExecutionStatuses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'remediationExecutionStatuses';
        _remediationExecutionStatuses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeRemediationExecutionStatusResponse',
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

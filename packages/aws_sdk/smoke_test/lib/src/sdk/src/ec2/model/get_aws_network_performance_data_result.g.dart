// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_aws_network_performance_data_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAwsNetworkPerformanceDataResult
    extends GetAwsNetworkPerformanceDataResult {
  @override
  final _i2.BuiltList<DataResponse>? dataResponses;
  @override
  final String? nextToken;

  factory _$GetAwsNetworkPerformanceDataResult(
          [void Function(GetAwsNetworkPerformanceDataResultBuilder)?
              updates]) =>
      (new GetAwsNetworkPerformanceDataResultBuilder()..update(updates))
          ._build();

  _$GetAwsNetworkPerformanceDataResult._({this.dataResponses, this.nextToken})
      : super._();

  @override
  GetAwsNetworkPerformanceDataResult rebuild(
          void Function(GetAwsNetworkPerformanceDataResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAwsNetworkPerformanceDataResultBuilder toBuilder() =>
      new GetAwsNetworkPerformanceDataResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAwsNetworkPerformanceDataResult &&
        dataResponses == other.dataResponses &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dataResponses.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAwsNetworkPerformanceDataResultBuilder
    implements
        Builder<GetAwsNetworkPerformanceDataResult,
            GetAwsNetworkPerformanceDataResultBuilder> {
  _$GetAwsNetworkPerformanceDataResult? _$v;

  _i2.ListBuilder<DataResponse>? _dataResponses;
  _i2.ListBuilder<DataResponse> get dataResponses =>
      _$this._dataResponses ??= new _i2.ListBuilder<DataResponse>();
  set dataResponses(_i2.ListBuilder<DataResponse>? dataResponses) =>
      _$this._dataResponses = dataResponses;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetAwsNetworkPerformanceDataResultBuilder();

  GetAwsNetworkPerformanceDataResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dataResponses = $v.dataResponses?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAwsNetworkPerformanceDataResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAwsNetworkPerformanceDataResult;
  }

  @override
  void update(
      void Function(GetAwsNetworkPerformanceDataResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAwsNetworkPerformanceDataResult build() => _build();

  _$GetAwsNetworkPerformanceDataResult _build() {
    _$GetAwsNetworkPerformanceDataResult _$result;
    try {
      _$result = _$v ??
          new _$GetAwsNetworkPerformanceDataResult._(
              dataResponses: _dataResponses?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dataResponses';
        _dataResponses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetAwsNetworkPerformanceDataResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

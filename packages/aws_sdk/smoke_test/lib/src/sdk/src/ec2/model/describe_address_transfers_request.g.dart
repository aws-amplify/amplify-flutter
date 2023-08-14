// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_address_transfers_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAddressTransfersRequest
    extends DescribeAddressTransfersRequest {
  @override
  final _i3.BuiltList<String>? allocationIds;
  @override
  final String? nextToken;
  @override
  final int maxResults;
  @override
  final bool dryRun;

  factory _$DescribeAddressTransfersRequest(
          [void Function(DescribeAddressTransfersRequestBuilder)? updates]) =>
      (new DescribeAddressTransfersRequestBuilder()..update(updates))._build();

  _$DescribeAddressTransfersRequest._(
      {this.allocationIds,
      this.nextToken,
      required this.maxResults,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeAddressTransfersRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeAddressTransfersRequest', 'dryRun');
  }

  @override
  DescribeAddressTransfersRequest rebuild(
          void Function(DescribeAddressTransfersRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAddressTransfersRequestBuilder toBuilder() =>
      new DescribeAddressTransfersRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAddressTransfersRequest &&
        allocationIds == other.allocationIds &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allocationIds.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeAddressTransfersRequestBuilder
    implements
        Builder<DescribeAddressTransfersRequest,
            DescribeAddressTransfersRequestBuilder> {
  _$DescribeAddressTransfersRequest? _$v;

  _i3.ListBuilder<String>? _allocationIds;
  _i3.ListBuilder<String> get allocationIds =>
      _$this._allocationIds ??= new _i3.ListBuilder<String>();
  set allocationIds(_i3.ListBuilder<String>? allocationIds) =>
      _$this._allocationIds = allocationIds;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeAddressTransfersRequestBuilder() {
    DescribeAddressTransfersRequest._init(this);
  }

  DescribeAddressTransfersRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocationIds = $v.allocationIds?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAddressTransfersRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAddressTransfersRequest;
  }

  @override
  void update(void Function(DescribeAddressTransfersRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAddressTransfersRequest build() => _build();

  _$DescribeAddressTransfersRequest _build() {
    _$DescribeAddressTransfersRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeAddressTransfersRequest._(
              allocationIds: _allocationIds?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeAddressTransfersRequest', 'maxResults'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeAddressTransfersRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allocationIds';
        _allocationIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAddressTransfersRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

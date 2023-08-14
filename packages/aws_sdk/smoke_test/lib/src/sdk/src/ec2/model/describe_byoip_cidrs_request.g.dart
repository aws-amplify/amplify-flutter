// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_byoip_cidrs_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeByoipCidrsRequest extends DescribeByoipCidrsRequest {
  @override
  final bool dryRun;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeByoipCidrsRequest(
          [void Function(DescribeByoipCidrsRequestBuilder)? updates]) =>
      (new DescribeByoipCidrsRequestBuilder()..update(updates))._build();

  _$DescribeByoipCidrsRequest._(
      {required this.dryRun, required this.maxResults, this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeByoipCidrsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeByoipCidrsRequest', 'maxResults');
  }

  @override
  DescribeByoipCidrsRequest rebuild(
          void Function(DescribeByoipCidrsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeByoipCidrsRequestBuilder toBuilder() =>
      new DescribeByoipCidrsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeByoipCidrsRequest &&
        dryRun == other.dryRun &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeByoipCidrsRequestBuilder
    implements
        Builder<DescribeByoipCidrsRequest, DescribeByoipCidrsRequestBuilder> {
  _$DescribeByoipCidrsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeByoipCidrsRequestBuilder() {
    DescribeByoipCidrsRequest._init(this);
  }

  DescribeByoipCidrsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeByoipCidrsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeByoipCidrsRequest;
  }

  @override
  void update(void Function(DescribeByoipCidrsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeByoipCidrsRequest build() => _build();

  _$DescribeByoipCidrsRequest _build() {
    final _$result = _$v ??
        new _$DescribeByoipCidrsRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DescribeByoipCidrsRequest', 'dryRun'),
            maxResults: BuiltValueNullFieldError.checkNotNull(
                maxResults, r'DescribeByoipCidrsRequest', 'maxResults'),
            nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_aggregate_id_format_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAggregateIdFormatRequest
    extends DescribeAggregateIdFormatRequest {
  @override
  final bool dryRun;

  factory _$DescribeAggregateIdFormatRequest(
          [void Function(DescribeAggregateIdFormatRequestBuilder)? updates]) =>
      (new DescribeAggregateIdFormatRequestBuilder()..update(updates))._build();

  _$DescribeAggregateIdFormatRequest._({required this.dryRun}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeAggregateIdFormatRequest', 'dryRun');
  }

  @override
  DescribeAggregateIdFormatRequest rebuild(
          void Function(DescribeAggregateIdFormatRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAggregateIdFormatRequestBuilder toBuilder() =>
      new DescribeAggregateIdFormatRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAggregateIdFormatRequest && dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeAggregateIdFormatRequestBuilder
    implements
        Builder<DescribeAggregateIdFormatRequest,
            DescribeAggregateIdFormatRequestBuilder> {
  _$DescribeAggregateIdFormatRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeAggregateIdFormatRequestBuilder() {
    DescribeAggregateIdFormatRequest._init(this);
  }

  DescribeAggregateIdFormatRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAggregateIdFormatRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAggregateIdFormatRequest;
  }

  @override
  void update(void Function(DescribeAggregateIdFormatRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAggregateIdFormatRequest build() => _build();

  _$DescribeAggregateIdFormatRequest _build() {
    final _$result = _$v ??
        new _$DescribeAggregateIdFormatRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DescribeAggregateIdFormatRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

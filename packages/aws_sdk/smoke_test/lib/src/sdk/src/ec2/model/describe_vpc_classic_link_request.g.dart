// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_vpc_classic_link_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpcClassicLinkRequest extends DescribeVpcClassicLinkRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? vpcIds;

  factory _$DescribeVpcClassicLinkRequest(
          [void Function(DescribeVpcClassicLinkRequestBuilder)? updates]) =>
      (new DescribeVpcClassicLinkRequestBuilder()..update(updates))._build();

  _$DescribeVpcClassicLinkRequest._(
      {this.filters, required this.dryRun, this.vpcIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeVpcClassicLinkRequest', 'dryRun');
  }

  @override
  DescribeVpcClassicLinkRequest rebuild(
          void Function(DescribeVpcClassicLinkRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpcClassicLinkRequestBuilder toBuilder() =>
      new DescribeVpcClassicLinkRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpcClassicLinkRequest &&
        filters == other.filters &&
        dryRun == other.dryRun &&
        vpcIds == other.vpcIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, vpcIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpcClassicLinkRequestBuilder
    implements
        Builder<DescribeVpcClassicLinkRequest,
            DescribeVpcClassicLinkRequestBuilder> {
  _$DescribeVpcClassicLinkRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _vpcIds;
  _i3.ListBuilder<String> get vpcIds =>
      _$this._vpcIds ??= new _i3.ListBuilder<String>();
  set vpcIds(_i3.ListBuilder<String>? vpcIds) => _$this._vpcIds = vpcIds;

  DescribeVpcClassicLinkRequestBuilder() {
    DescribeVpcClassicLinkRequest._init(this);
  }

  DescribeVpcClassicLinkRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _vpcIds = $v.vpcIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpcClassicLinkRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpcClassicLinkRequest;
  }

  @override
  void update(void Function(DescribeVpcClassicLinkRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpcClassicLinkRequest build() => _build();

  _$DescribeVpcClassicLinkRequest _build() {
    _$DescribeVpcClassicLinkRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpcClassicLinkRequest._(
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeVpcClassicLinkRequest', 'dryRun'),
              vpcIds: _vpcIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'vpcIds';
        _vpcIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpcClassicLinkRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

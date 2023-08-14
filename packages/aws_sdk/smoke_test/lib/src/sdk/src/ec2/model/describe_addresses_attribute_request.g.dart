// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_addresses_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAddressesAttributeRequest
    extends DescribeAddressesAttributeRequest {
  @override
  final _i3.BuiltList<String>? allocationIds;
  @override
  final AddressAttributeName? attribute;
  @override
  final String? nextToken;
  @override
  final int maxResults;
  @override
  final bool dryRun;

  factory _$DescribeAddressesAttributeRequest(
          [void Function(DescribeAddressesAttributeRequestBuilder)? updates]) =>
      (new DescribeAddressesAttributeRequestBuilder()..update(updates))
          ._build();

  _$DescribeAddressesAttributeRequest._(
      {this.allocationIds,
      this.attribute,
      this.nextToken,
      required this.maxResults,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeAddressesAttributeRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeAddressesAttributeRequest', 'dryRun');
  }

  @override
  DescribeAddressesAttributeRequest rebuild(
          void Function(DescribeAddressesAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAddressesAttributeRequestBuilder toBuilder() =>
      new DescribeAddressesAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAddressesAttributeRequest &&
        allocationIds == other.allocationIds &&
        attribute == other.attribute &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allocationIds.hashCode);
    _$hash = $jc(_$hash, attribute.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeAddressesAttributeRequestBuilder
    implements
        Builder<DescribeAddressesAttributeRequest,
            DescribeAddressesAttributeRequestBuilder> {
  _$DescribeAddressesAttributeRequest? _$v;

  _i3.ListBuilder<String>? _allocationIds;
  _i3.ListBuilder<String> get allocationIds =>
      _$this._allocationIds ??= new _i3.ListBuilder<String>();
  set allocationIds(_i3.ListBuilder<String>? allocationIds) =>
      _$this._allocationIds = allocationIds;

  AddressAttributeName? _attribute;
  AddressAttributeName? get attribute => _$this._attribute;
  set attribute(AddressAttributeName? attribute) =>
      _$this._attribute = attribute;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeAddressesAttributeRequestBuilder() {
    DescribeAddressesAttributeRequest._init(this);
  }

  DescribeAddressesAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocationIds = $v.allocationIds?.toBuilder();
      _attribute = $v.attribute;
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAddressesAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAddressesAttributeRequest;
  }

  @override
  void update(
      void Function(DescribeAddressesAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAddressesAttributeRequest build() => _build();

  _$DescribeAddressesAttributeRequest _build() {
    _$DescribeAddressesAttributeRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeAddressesAttributeRequest._(
              allocationIds: _allocationIds?.build(),
              attribute: attribute,
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeAddressesAttributeRequest', 'maxResults'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeAddressesAttributeRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allocationIds';
        _allocationIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAddressesAttributeRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_account_attributes_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAccountAttributesRequest
    extends DescribeAccountAttributesRequest {
  @override
  final _i3.BuiltList<AccountAttributeName>? attributeNames;
  @override
  final bool dryRun;

  factory _$DescribeAccountAttributesRequest(
          [void Function(DescribeAccountAttributesRequestBuilder)? updates]) =>
      (new DescribeAccountAttributesRequestBuilder()..update(updates))._build();

  _$DescribeAccountAttributesRequest._(
      {this.attributeNames, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeAccountAttributesRequest', 'dryRun');
  }

  @override
  DescribeAccountAttributesRequest rebuild(
          void Function(DescribeAccountAttributesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAccountAttributesRequestBuilder toBuilder() =>
      new DescribeAccountAttributesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAccountAttributesRequest &&
        attributeNames == other.attributeNames &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attributeNames.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeAccountAttributesRequestBuilder
    implements
        Builder<DescribeAccountAttributesRequest,
            DescribeAccountAttributesRequestBuilder> {
  _$DescribeAccountAttributesRequest? _$v;

  _i3.ListBuilder<AccountAttributeName>? _attributeNames;
  _i3.ListBuilder<AccountAttributeName> get attributeNames =>
      _$this._attributeNames ??= new _i3.ListBuilder<AccountAttributeName>();
  set attributeNames(_i3.ListBuilder<AccountAttributeName>? attributeNames) =>
      _$this._attributeNames = attributeNames;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeAccountAttributesRequestBuilder() {
    DescribeAccountAttributesRequest._init(this);
  }

  DescribeAccountAttributesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeNames = $v.attributeNames?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAccountAttributesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAccountAttributesRequest;
  }

  @override
  void update(void Function(DescribeAccountAttributesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAccountAttributesRequest build() => _build();

  _$DescribeAccountAttributesRequest _build() {
    _$DescribeAccountAttributesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeAccountAttributesRequest._(
              attributeNames: _attributeNames?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeAccountAttributesRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributeNames';
        _attributeNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAccountAttributesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_reserved_instances_modifications_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeReservedInstancesModificationsRequest
    extends DescribeReservedInstancesModificationsRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final _i3.BuiltList<String>? reservedInstancesModificationIds;
  @override
  final String? nextToken;

  factory _$DescribeReservedInstancesModificationsRequest(
          [void Function(DescribeReservedInstancesModificationsRequestBuilder)?
              updates]) =>
      (new DescribeReservedInstancesModificationsRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeReservedInstancesModificationsRequest._(
      {this.filters, this.reservedInstancesModificationIds, this.nextToken})
      : super._();

  @override
  DescribeReservedInstancesModificationsRequest rebuild(
          void Function(DescribeReservedInstancesModificationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeReservedInstancesModificationsRequestBuilder toBuilder() =>
      new DescribeReservedInstancesModificationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeReservedInstancesModificationsRequest &&
        filters == other.filters &&
        reservedInstancesModificationIds ==
            other.reservedInstancesModificationIds &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, reservedInstancesModificationIds.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeReservedInstancesModificationsRequestBuilder
    implements
        Builder<DescribeReservedInstancesModificationsRequest,
            DescribeReservedInstancesModificationsRequestBuilder> {
  _$DescribeReservedInstancesModificationsRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  _i3.ListBuilder<String>? _reservedInstancesModificationIds;
  _i3.ListBuilder<String> get reservedInstancesModificationIds =>
      _$this._reservedInstancesModificationIds ??=
          new _i3.ListBuilder<String>();
  set reservedInstancesModificationIds(
          _i3.ListBuilder<String>? reservedInstancesModificationIds) =>
      _$this._reservedInstancesModificationIds =
          reservedInstancesModificationIds;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeReservedInstancesModificationsRequestBuilder();

  DescribeReservedInstancesModificationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _reservedInstancesModificationIds =
          $v.reservedInstancesModificationIds?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeReservedInstancesModificationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeReservedInstancesModificationsRequest;
  }

  @override
  void update(
      void Function(DescribeReservedInstancesModificationsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeReservedInstancesModificationsRequest build() => _build();

  _$DescribeReservedInstancesModificationsRequest _build() {
    _$DescribeReservedInstancesModificationsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeReservedInstancesModificationsRequest._(
              filters: _filters?.build(),
              reservedInstancesModificationIds:
                  _reservedInstancesModificationIds?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'reservedInstancesModificationIds';
        _reservedInstancesModificationIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeReservedInstancesModificationsRequest',
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

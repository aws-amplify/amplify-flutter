// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_virtual_mfa_devices_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListVirtualMfaDevicesRequest extends ListVirtualMfaDevicesRequest {
  @override
  final _i3.AssignmentStatusType? assignmentStatus;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListVirtualMfaDevicesRequest(
          [void Function(ListVirtualMfaDevicesRequestBuilder)? updates]) =>
      (new ListVirtualMfaDevicesRequestBuilder()..update(updates))._build();

  _$ListVirtualMfaDevicesRequest._(
      {this.assignmentStatus, this.marker, this.maxItems})
      : super._();

  @override
  ListVirtualMfaDevicesRequest rebuild(
          void Function(ListVirtualMfaDevicesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListVirtualMfaDevicesRequestBuilder toBuilder() =>
      new ListVirtualMfaDevicesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListVirtualMfaDevicesRequest &&
        assignmentStatus == other.assignmentStatus &&
        marker == other.marker &&
        maxItems == other.maxItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, assignmentStatus.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListVirtualMfaDevicesRequestBuilder
    implements
        Builder<ListVirtualMfaDevicesRequest,
            ListVirtualMfaDevicesRequestBuilder> {
  _$ListVirtualMfaDevicesRequest? _$v;

  _i3.AssignmentStatusType? _assignmentStatus;
  _i3.AssignmentStatusType? get assignmentStatus => _$this._assignmentStatus;
  set assignmentStatus(_i3.AssignmentStatusType? assignmentStatus) =>
      _$this._assignmentStatus = assignmentStatus;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListVirtualMfaDevicesRequestBuilder() {
    ListVirtualMfaDevicesRequest._init(this);
  }

  ListVirtualMfaDevicesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assignmentStatus = $v.assignmentStatus;
      _marker = $v.marker;
      _maxItems = $v.maxItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListVirtualMfaDevicesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListVirtualMfaDevicesRequest;
  }

  @override
  void update(void Function(ListVirtualMfaDevicesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListVirtualMfaDevicesRequest build() => _build();

  _$ListVirtualMfaDevicesRequest _build() {
    final _$result = _$v ??
        new _$ListVirtualMfaDevicesRequest._(
            assignmentStatus: assignmentStatus,
            marker: marker,
            maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

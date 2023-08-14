// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assign_private_ip_addresses_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssignPrivateIpAddressesRequest
    extends AssignPrivateIpAddressesRequest {
  @override
  final bool allowReassignment;
  @override
  final String? networkInterfaceId;
  @override
  final _i3.BuiltList<String>? privateIpAddresses;
  @override
  final int secondaryPrivateIpAddressCount;
  @override
  final _i3.BuiltList<String>? ipv4Prefixes;
  @override
  final int ipv4PrefixCount;

  factory _$AssignPrivateIpAddressesRequest(
          [void Function(AssignPrivateIpAddressesRequestBuilder)? updates]) =>
      (new AssignPrivateIpAddressesRequestBuilder()..update(updates))._build();

  _$AssignPrivateIpAddressesRequest._(
      {required this.allowReassignment,
      this.networkInterfaceId,
      this.privateIpAddresses,
      required this.secondaryPrivateIpAddressCount,
      this.ipv4Prefixes,
      required this.ipv4PrefixCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(allowReassignment,
        r'AssignPrivateIpAddressesRequest', 'allowReassignment');
    BuiltValueNullFieldError.checkNotNull(secondaryPrivateIpAddressCount,
        r'AssignPrivateIpAddressesRequest', 'secondaryPrivateIpAddressCount');
    BuiltValueNullFieldError.checkNotNull(
        ipv4PrefixCount, r'AssignPrivateIpAddressesRequest', 'ipv4PrefixCount');
  }

  @override
  AssignPrivateIpAddressesRequest rebuild(
          void Function(AssignPrivateIpAddressesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssignPrivateIpAddressesRequestBuilder toBuilder() =>
      new AssignPrivateIpAddressesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssignPrivateIpAddressesRequest &&
        allowReassignment == other.allowReassignment &&
        networkInterfaceId == other.networkInterfaceId &&
        privateIpAddresses == other.privateIpAddresses &&
        secondaryPrivateIpAddressCount ==
            other.secondaryPrivateIpAddressCount &&
        ipv4Prefixes == other.ipv4Prefixes &&
        ipv4PrefixCount == other.ipv4PrefixCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allowReassignment.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, privateIpAddresses.hashCode);
    _$hash = $jc(_$hash, secondaryPrivateIpAddressCount.hashCode);
    _$hash = $jc(_$hash, ipv4Prefixes.hashCode);
    _$hash = $jc(_$hash, ipv4PrefixCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssignPrivateIpAddressesRequestBuilder
    implements
        Builder<AssignPrivateIpAddressesRequest,
            AssignPrivateIpAddressesRequestBuilder> {
  _$AssignPrivateIpAddressesRequest? _$v;

  bool? _allowReassignment;
  bool? get allowReassignment => _$this._allowReassignment;
  set allowReassignment(bool? allowReassignment) =>
      _$this._allowReassignment = allowReassignment;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  _i3.ListBuilder<String>? _privateIpAddresses;
  _i3.ListBuilder<String> get privateIpAddresses =>
      _$this._privateIpAddresses ??= new _i3.ListBuilder<String>();
  set privateIpAddresses(_i3.ListBuilder<String>? privateIpAddresses) =>
      _$this._privateIpAddresses = privateIpAddresses;

  int? _secondaryPrivateIpAddressCount;
  int? get secondaryPrivateIpAddressCount =>
      _$this._secondaryPrivateIpAddressCount;
  set secondaryPrivateIpAddressCount(int? secondaryPrivateIpAddressCount) =>
      _$this._secondaryPrivateIpAddressCount = secondaryPrivateIpAddressCount;

  _i3.ListBuilder<String>? _ipv4Prefixes;
  _i3.ListBuilder<String> get ipv4Prefixes =>
      _$this._ipv4Prefixes ??= new _i3.ListBuilder<String>();
  set ipv4Prefixes(_i3.ListBuilder<String>? ipv4Prefixes) =>
      _$this._ipv4Prefixes = ipv4Prefixes;

  int? _ipv4PrefixCount;
  int? get ipv4PrefixCount => _$this._ipv4PrefixCount;
  set ipv4PrefixCount(int? ipv4PrefixCount) =>
      _$this._ipv4PrefixCount = ipv4PrefixCount;

  AssignPrivateIpAddressesRequestBuilder() {
    AssignPrivateIpAddressesRequest._init(this);
  }

  AssignPrivateIpAddressesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allowReassignment = $v.allowReassignment;
      _networkInterfaceId = $v.networkInterfaceId;
      _privateIpAddresses = $v.privateIpAddresses?.toBuilder();
      _secondaryPrivateIpAddressCount = $v.secondaryPrivateIpAddressCount;
      _ipv4Prefixes = $v.ipv4Prefixes?.toBuilder();
      _ipv4PrefixCount = $v.ipv4PrefixCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssignPrivateIpAddressesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssignPrivateIpAddressesRequest;
  }

  @override
  void update(void Function(AssignPrivateIpAddressesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssignPrivateIpAddressesRequest build() => _build();

  _$AssignPrivateIpAddressesRequest _build() {
    _$AssignPrivateIpAddressesRequest _$result;
    try {
      _$result = _$v ??
          new _$AssignPrivateIpAddressesRequest._(
              allowReassignment: BuiltValueNullFieldError.checkNotNull(
                  allowReassignment,
                  r'AssignPrivateIpAddressesRequest',
                  'allowReassignment'),
              networkInterfaceId: networkInterfaceId,
              privateIpAddresses: _privateIpAddresses?.build(),
              secondaryPrivateIpAddressCount:
                  BuiltValueNullFieldError.checkNotNull(
                      secondaryPrivateIpAddressCount,
                      r'AssignPrivateIpAddressesRequest',
                      'secondaryPrivateIpAddressCount'),
              ipv4Prefixes: _ipv4Prefixes?.build(),
              ipv4PrefixCount: BuiltValueNullFieldError.checkNotNull(
                  ipv4PrefixCount,
                  r'AssignPrivateIpAddressesRequest',
                  'ipv4PrefixCount'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'privateIpAddresses';
        _privateIpAddresses?.build();

        _$failedField = 'ipv4Prefixes';
        _ipv4Prefixes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssignPrivateIpAddressesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

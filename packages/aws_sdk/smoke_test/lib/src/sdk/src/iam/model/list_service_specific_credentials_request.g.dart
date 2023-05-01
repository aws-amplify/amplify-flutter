// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_service_specific_credentials_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListServiceSpecificCredentialsRequest
    extends ListServiceSpecificCredentialsRequest {
  @override
  final String? userName;
  @override
  final String? serviceName;

  factory _$ListServiceSpecificCredentialsRequest(
          [void Function(ListServiceSpecificCredentialsRequestBuilder)?
              updates]) =>
      (new ListServiceSpecificCredentialsRequestBuilder()..update(updates))
          ._build();

  _$ListServiceSpecificCredentialsRequest._({this.userName, this.serviceName})
      : super._();

  @override
  ListServiceSpecificCredentialsRequest rebuild(
          void Function(ListServiceSpecificCredentialsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListServiceSpecificCredentialsRequestBuilder toBuilder() =>
      new ListServiceSpecificCredentialsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListServiceSpecificCredentialsRequest &&
        userName == other.userName &&
        serviceName == other.serviceName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListServiceSpecificCredentialsRequestBuilder
    implements
        Builder<ListServiceSpecificCredentialsRequest,
            ListServiceSpecificCredentialsRequestBuilder> {
  _$ListServiceSpecificCredentialsRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  ListServiceSpecificCredentialsRequestBuilder() {
    ListServiceSpecificCredentialsRequest._init(this);
  }

  ListServiceSpecificCredentialsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _serviceName = $v.serviceName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListServiceSpecificCredentialsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListServiceSpecificCredentialsRequest;
  }

  @override
  void update(
      void Function(ListServiceSpecificCredentialsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListServiceSpecificCredentialsRequest build() => _build();

  _$ListServiceSpecificCredentialsRequest _build() {
    final _$result = _$v ??
        new _$ListServiceSpecificCredentialsRequest._(
            userName: userName, serviceName: serviceName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

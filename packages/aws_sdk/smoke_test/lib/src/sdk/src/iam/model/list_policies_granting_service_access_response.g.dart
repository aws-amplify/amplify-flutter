// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_policies_granting_service_access_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListPoliciesGrantingServiceAccessResponse
    extends ListPoliciesGrantingServiceAccessResponse {
  @override
  final _i3.BuiltList<_i2.ListPoliciesGrantingServiceAccessEntry>
      policiesGrantingServiceAccess;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListPoliciesGrantingServiceAccessResponse(
          [void Function(ListPoliciesGrantingServiceAccessResponseBuilder)?
              updates]) =>
      (new ListPoliciesGrantingServiceAccessResponseBuilder()..update(updates))
          ._build();

  _$ListPoliciesGrantingServiceAccessResponse._(
      {required this.policiesGrantingServiceAccess,
      required this.isTruncated,
      this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        policiesGrantingServiceAccess,
        r'ListPoliciesGrantingServiceAccessResponse',
        'policiesGrantingServiceAccess');
    BuiltValueNullFieldError.checkNotNull(isTruncated,
        r'ListPoliciesGrantingServiceAccessResponse', 'isTruncated');
  }

  @override
  ListPoliciesGrantingServiceAccessResponse rebuild(
          void Function(ListPoliciesGrantingServiceAccessResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListPoliciesGrantingServiceAccessResponseBuilder toBuilder() =>
      new ListPoliciesGrantingServiceAccessResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListPoliciesGrantingServiceAccessResponse &&
        policiesGrantingServiceAccess == other.policiesGrantingServiceAccess &&
        isTruncated == other.isTruncated &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policiesGrantingServiceAccess.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListPoliciesGrantingServiceAccessResponseBuilder
    implements
        Builder<ListPoliciesGrantingServiceAccessResponse,
            ListPoliciesGrantingServiceAccessResponseBuilder> {
  _$ListPoliciesGrantingServiceAccessResponse? _$v;

  _i3.ListBuilder<_i2.ListPoliciesGrantingServiceAccessEntry>?
      _policiesGrantingServiceAccess;
  _i3.ListBuilder<_i2.ListPoliciesGrantingServiceAccessEntry>
      get policiesGrantingServiceAccess =>
          _$this._policiesGrantingServiceAccess ??=
              new _i3.ListBuilder<_i2.ListPoliciesGrantingServiceAccessEntry>();
  set policiesGrantingServiceAccess(
          _i3.ListBuilder<_i2.ListPoliciesGrantingServiceAccessEntry>?
              policiesGrantingServiceAccess) =>
      _$this._policiesGrantingServiceAccess = policiesGrantingServiceAccess;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  ListPoliciesGrantingServiceAccessResponseBuilder() {
    ListPoliciesGrantingServiceAccessResponse._init(this);
  }

  ListPoliciesGrantingServiceAccessResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policiesGrantingServiceAccess =
          $v.policiesGrantingServiceAccess.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListPoliciesGrantingServiceAccessResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListPoliciesGrantingServiceAccessResponse;
  }

  @override
  void update(
      void Function(ListPoliciesGrantingServiceAccessResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ListPoliciesGrantingServiceAccessResponse build() => _build();

  _$ListPoliciesGrantingServiceAccessResponse _build() {
    _$ListPoliciesGrantingServiceAccessResponse _$result;
    try {
      _$result = _$v ??
          new _$ListPoliciesGrantingServiceAccessResponse._(
              policiesGrantingServiceAccess:
                  policiesGrantingServiceAccess.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(isTruncated,
                  r'ListPoliciesGrantingServiceAccessResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'policiesGrantingServiceAccess';
        policiesGrantingServiceAccess.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListPoliciesGrantingServiceAccessResponse',
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

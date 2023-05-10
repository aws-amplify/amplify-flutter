// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_policies_granting_service_access_entry;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListPoliciesGrantingServiceAccessEntry
    extends ListPoliciesGrantingServiceAccessEntry {
  @override
  final String? serviceNamespace;
  @override
  final _i3.BuiltList<_i2.PolicyGrantingServiceAccess>? policies;

  factory _$ListPoliciesGrantingServiceAccessEntry(
          [void Function(ListPoliciesGrantingServiceAccessEntryBuilder)?
              updates]) =>
      (new ListPoliciesGrantingServiceAccessEntryBuilder()..update(updates))
          ._build();

  _$ListPoliciesGrantingServiceAccessEntry._(
      {this.serviceNamespace, this.policies})
      : super._();

  @override
  ListPoliciesGrantingServiceAccessEntry rebuild(
          void Function(ListPoliciesGrantingServiceAccessEntryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListPoliciesGrantingServiceAccessEntryBuilder toBuilder() =>
      new ListPoliciesGrantingServiceAccessEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListPoliciesGrantingServiceAccessEntry &&
        serviceNamespace == other.serviceNamespace &&
        policies == other.policies;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceNamespace.hashCode);
    _$hash = $jc(_$hash, policies.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListPoliciesGrantingServiceAccessEntryBuilder
    implements
        Builder<ListPoliciesGrantingServiceAccessEntry,
            ListPoliciesGrantingServiceAccessEntryBuilder> {
  _$ListPoliciesGrantingServiceAccessEntry? _$v;

  String? _serviceNamespace;
  String? get serviceNamespace => _$this._serviceNamespace;
  set serviceNamespace(String? serviceNamespace) =>
      _$this._serviceNamespace = serviceNamespace;

  _i3.ListBuilder<_i2.PolicyGrantingServiceAccess>? _policies;
  _i3.ListBuilder<_i2.PolicyGrantingServiceAccess> get policies =>
      _$this._policies ??=
          new _i3.ListBuilder<_i2.PolicyGrantingServiceAccess>();
  set policies(_i3.ListBuilder<_i2.PolicyGrantingServiceAccess>? policies) =>
      _$this._policies = policies;

  ListPoliciesGrantingServiceAccessEntryBuilder() {
    ListPoliciesGrantingServiceAccessEntry._init(this);
  }

  ListPoliciesGrantingServiceAccessEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceNamespace = $v.serviceNamespace;
      _policies = $v.policies?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListPoliciesGrantingServiceAccessEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListPoliciesGrantingServiceAccessEntry;
  }

  @override
  void update(
      void Function(ListPoliciesGrantingServiceAccessEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListPoliciesGrantingServiceAccessEntry build() => _build();

  _$ListPoliciesGrantingServiceAccessEntry _build() {
    _$ListPoliciesGrantingServiceAccessEntry _$result;
    try {
      _$result = _$v ??
          new _$ListPoliciesGrantingServiceAccessEntry._(
              serviceNamespace: serviceNamespace, policies: _policies?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'policies';
        _policies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListPoliciesGrantingServiceAccessEntry',
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

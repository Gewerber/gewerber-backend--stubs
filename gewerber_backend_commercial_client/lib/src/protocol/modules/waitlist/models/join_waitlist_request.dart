/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import '../../../modules/waitlist/models/waitlist_locale.dart' as _i2;
import '../../../modules/waitlist/models/waitlist_source.dart' as _i3;

abstract class JoinWaitlistRequest
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  JoinWaitlistRequest._({
    required this.email,
    _i2.WaitlistLocale? locale,
    _i3.WaitlistSource? source,
    this.referrer,
    this.utmSource,
    this.utmMedium,
    this.utmCampaign,
    this.businessType,
    this.honeypot,
  }) : locale = locale ?? _i2.WaitlistLocale.de,
       source = source ?? _i3.WaitlistSource.website;

  factory JoinWaitlistRequest({
    required String email,
    _i2.WaitlistLocale? locale,
    _i3.WaitlistSource? source,
    String? referrer,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    String? businessType,
    String? honeypot,
  }) = _JoinWaitlistRequestImpl;

  factory JoinWaitlistRequest.fromJson(Map<String, dynamic> jsonSerialization) {
    return JoinWaitlistRequest(
      email: jsonSerialization['email'] as String,
      locale: jsonSerialization['locale'] == null
          ? null
          : _i2.WaitlistLocale.fromJson(
              (jsonSerialization['locale'] as String),
            ),
      source: jsonSerialization['source'] == null
          ? null
          : _i3.WaitlistSource.fromJson(
              (jsonSerialization['source'] as String),
            ),
      referrer: jsonSerialization['referrer'] as String?,
      utmSource: jsonSerialization['utmSource'] as String?,
      utmMedium: jsonSerialization['utmMedium'] as String?,
      utmCampaign: jsonSerialization['utmCampaign'] as String?,
      businessType: jsonSerialization['businessType'] as String?,
      honeypot: jsonSerialization['honeypot'] as String?,
    );
  }

  String email;

  _i2.WaitlistLocale locale;

  _i3.WaitlistSource source;

  String? referrer;

  String? utmSource;

  String? utmMedium;

  String? utmCampaign;

  String? businessType;

  String? honeypot;

  /// Returns a shallow copy of this [JoinWaitlistRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  JoinWaitlistRequest copyWith({
    String? email,
    _i2.WaitlistLocale? locale,
    _i3.WaitlistSource? source,
    String? referrer,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    String? businessType,
    String? honeypot,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.JoinWaitlistRequest',
      'email': email,
      'locale': locale.toJson(),
      'source': source.toJson(),
      if (referrer != null) 'referrer': referrer,
      if (utmSource != null) 'utmSource': utmSource,
      if (utmMedium != null) 'utmMedium': utmMedium,
      if (utmCampaign != null) 'utmCampaign': utmCampaign,
      if (businessType != null) 'businessType': businessType,
      if (honeypot != null) 'honeypot': honeypot,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.JoinWaitlistRequest',
      'email': email,
      'locale': locale.toJson(),
      'source': source.toJson(),
      if (referrer != null) 'referrer': referrer,
      if (utmSource != null) 'utmSource': utmSource,
      if (utmMedium != null) 'utmMedium': utmMedium,
      if (utmCampaign != null) 'utmCampaign': utmCampaign,
      if (businessType != null) 'businessType': businessType,
      if (honeypot != null) 'honeypot': honeypot,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _JoinWaitlistRequestImpl extends JoinWaitlistRequest {
  _JoinWaitlistRequestImpl({
    required String email,
    _i2.WaitlistLocale? locale,
    _i3.WaitlistSource? source,
    String? referrer,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    String? businessType,
    String? honeypot,
  }) : super._(
         email: email,
         locale: locale,
         source: source,
         referrer: referrer,
         utmSource: utmSource,
         utmMedium: utmMedium,
         utmCampaign: utmCampaign,
         businessType: businessType,
         honeypot: honeypot,
       );

  /// Returns a shallow copy of this [JoinWaitlistRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  JoinWaitlistRequest copyWith({
    String? email,
    _i2.WaitlistLocale? locale,
    _i3.WaitlistSource? source,
    Object? referrer = _Undefined,
    Object? utmSource = _Undefined,
    Object? utmMedium = _Undefined,
    Object? utmCampaign = _Undefined,
    Object? businessType = _Undefined,
    Object? honeypot = _Undefined,
  }) {
    return JoinWaitlistRequest(
      email: email ?? this.email,
      locale: locale ?? this.locale,
      source: source ?? this.source,
      referrer: referrer is String? ? referrer : this.referrer,
      utmSource: utmSource is String? ? utmSource : this.utmSource,
      utmMedium: utmMedium is String? ? utmMedium : this.utmMedium,
      utmCampaign: utmCampaign is String? ? utmCampaign : this.utmCampaign,
      businessType: businessType is String? ? businessType : this.businessType,
      honeypot: honeypot is String? ? honeypot : this.honeypot,
    );
  }
}

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
import 'dart:async' as _i2;
import 'package:gewerber_backend_commercial_client/src/protocol/modules/waitlist/models/join_waitlist_request.dart'
    as _i3;

/// {@category Endpoint}
class EndpointCommercial extends _i1.EndpointRef {
  EndpointCommercial(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'gewerber_backend_commercial.commercial';

  _i2.Future<String> status() => caller.callServerEndpoint<String>(
    'gewerber_backend_commercial.commercial',
    'status',
    {},
  );
}

/// Public waitlist endpoint used to collect email addresses for the launch
/// notification and the beta program while the product is under development.
///
/// The endpoint is unauthenticated by design. It is spam-protected by a
/// honeypot field and stays privacy-preserving: joining is idempotent and the
/// response never reveals whether an address was already registered.
/// {@category Endpoint}
class EndpointWaitlist extends _i1.EndpointRef {
  EndpointWaitlist(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'gewerber_backend_commercial.waitlist';

  _i2.Future<void> join(_i3.JoinWaitlistRequest request) =>
      caller.callServerEndpoint<void>(
        'gewerber_backend_commercial.waitlist',
        'join',
        {'request': request},
      );
}

class Caller extends _i1.ModuleEndpointCaller {
  Caller(_i1.ServerpodClientShared client) : super(client) {
    commercial = EndpointCommercial(this);
    waitlist = EndpointWaitlist(this);
  }

  late final EndpointCommercial commercial;

  late final EndpointWaitlist waitlist;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
    'gewerber_backend_commercial.commercial': commercial,
    'gewerber_backend_commercial.waitlist': waitlist,
  };
}

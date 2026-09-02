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
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/commercial_endpoint.dart' as _i2;
import '../modules/waitlist/endpoints/waitlist_endpoint.dart' as _i3;
import 'package:gewerber_backend_commercial_server/src/generated/modules/waitlist/models/join_waitlist_request.dart'
    as _i4;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'commercial': _i2.CommercialEndpoint()
        ..initialize(
          server,
          'commercial',
          'gewerber_backend_commercial',
        ),
      'waitlist': _i3.WaitlistEndpoint()
        ..initialize(
          server,
          'waitlist',
          'gewerber_backend_commercial',
        ),
    };
    connectors['commercial'] = _i1.EndpointConnector(
      name: 'commercial',
      endpoint: endpoints['commercial']!,
      methodConnectors: {
        'status': _i1.MethodConnector(
          name: 'status',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['commercial'] as _i2.CommercialEndpoint)
                  .status(session),
        ),
      },
    );
    connectors['waitlist'] = _i1.EndpointConnector(
      name: 'waitlist',
      endpoint: endpoints['waitlist']!,
      methodConnectors: {
        'join': _i1.MethodConnector(
          name: 'join',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i4.JoinWaitlistRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['waitlist'] as _i3.WaitlistEndpoint).join(
                session,
                params['request'],
              ),
        ),
      },
    );
  }
}

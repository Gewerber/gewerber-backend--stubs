import 'package:serverpod/serverpod.dart';

import '../../../generated/protocol.dart';

class WaitlistEndpoint extends Endpoint {
  Future<void> join(Session session, JoinWaitlistRequest request) async {
    throw UnimplementedError();
  }
}

import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/data/secure_storage/secure_storage.dart';
import 'package:lost_and_found/core/domain/usecases/usecase.dart';
import 'package:lost_and_found/utils/constants.dart';
import 'package:xmpp_plugin/xmpp_plugin.dart';

import '../../../../core/status/failures.dart';
import '../../../../core/status/success.dart';

abstract class ChatClient {
  Future<Either<Failure, Success>> loginToChatServer(NoParams params);
}

class ChatClientImpl implements ChatClient {
  final SecureStorage _storage;
  late XmppConnection _connection;

  ChatClientImpl(this._storage);

  @override
  Future<Either<Failure, Success>> loginToChatServer(NoParams params) async {
    // TODO (@alecava41) maybe credential doesn't contain username (but email!)
    final username = (await _storage.getCredentials()).user;

    final params = {
      "user_jid": "$username@localhost",
      "password": username,
      "host": chatUrl,
      "port": 5222,
      "requireSSLConnection": false,
      "autoDeliveryReceipt": true,
      "useStreamManagement": false,
      "automaticReconnection": true,
    };

    _connection = XmppConnection(params);

    await _connection.start(_onError);
    await _connection.login();

    return const Right(Success.genericSuccess());
  }

  void _onError(Object error) {
    log(error.toString());
  }
}

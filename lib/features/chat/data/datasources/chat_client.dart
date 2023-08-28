import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../utils/constants.dart';
import '../models/send_notification_body.dart';

part 'chat_client.g.dart';

@RestApi(baseUrl: "$baseUrl/api")
abstract class ChatClient {
  factory ChatClient(Dio dio, {String baseUrl}) = _ChatClient;

  @POST('/chat')
  Future<void> sendNotification(@Body() SendNotificationBody body);
}

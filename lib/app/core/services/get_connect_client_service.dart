import 'package:get/get_connect/connect.dart';
import 'client_http_service.dart';

class GetConnectClientService extends GetConnect implements IRestClient {
  @override
  Future getAll(String url) async {
    final response = await get(url);
    return response.body;
  }
}

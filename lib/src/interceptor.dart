import 'intercepted_exchanges.dart';

abstract class Interceptor {
  /// [correlator] is a value generated by the client for each request-response,
  /// exchange, and is used to associate the request with the response.
  void interceptRequest(
    InterceptedBaseRequest request,
    String correlator,
  );

  /// [correlator] is a value generated by the client for each request-response,
  /// exchange, and is used to associate the request with the response.
  void interceptStreamedResponse(
    InterceptedIOStreamedResponse response,
    String correlator,
  );
}

abstract class DefaultResponse {
  int get statusCode;
  String get message;
}

class MyResponse implements DefaultResponse {
  int _statusCode;
  String _message;

  MyResponse(this._statusCode, this._message);

  @override
  String get message => _message;

  @override
  int get statusCode => _statusCode;


}

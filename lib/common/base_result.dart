class BaseResult<T> {
  int code;
  String msg;
  T? data;

  BaseResult(this.code, this.msg, this.data);

  factory BaseResult.fromJson(Map<String, dynamic> json) {
    int code = json['code'] as int;
    String msg = json['msg'] as String;
    T data = json['data'] as T;
    return BaseResult(code, msg, data);
  }
}

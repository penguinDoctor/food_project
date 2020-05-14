import 'package:dio/dio.dart';
import 'package:favorcate/Core/service/http_config.dart';
class Service {
//  https://httpbin.org
  static final BaseOptions baseOptions = BaseOptions(
      baseUrl: HttpConfig.baseUrl, connectTimeout: HttpConfig.timeOut);
  static final Dio dio = Dio(baseOptions);

  //泛型
  static Future<T> request<T>(String url,
      {String method = "GET", Map<String, dynamic> parameters,Interceptor interceptor}) async {
    //添加拦截器
    Interceptor dIter = InterceptorsWrapper(
      onResponse: (res){
        return res;
      },
      onRequest: (request){

        return request;
    },
      onError: (err){
        return err;
    }
    );
List<Interceptor> list = [];
list.add(dIter);

if(interceptor!=null){
  list.add(interceptor);
}
dio.interceptors.addAll(list);
    final options = Options(method: method);
    try {
      Response response =
          await dio.request(url, queryParameters: parameters, options: options);
      return response.data;
    } on DioError catch (e) {
      return Future.error(e);
    }
  }

}

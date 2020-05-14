import 'service.dart';
import 'package:favorcate/Core/model/detail.dart';

class FXRequest{

  static Future<List<FxDetailModel>> request() async{

    final result =  await Service.request("/meal");
    final listAry = result["meal"];
    List<FxDetailModel>  lists = [];
    for(var json in listAry){
      lists.add(FxDetailModel.fromJson(json));
    }
    print("list=${lists}");
    return lists;
  }
}
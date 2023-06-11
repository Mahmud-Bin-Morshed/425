import 'package:get/get.dart';

class Provider extends GetConnect{

  Future<dynamic> getUser() async{
    final response = await get('http://www.json-generator.com/api/json/get/cfrJFXLTAO?indent=2');
    if(response.status.hasError){
      return Future.error(response.statusText!);
    } else {
      return response.body;
    }
  }

}
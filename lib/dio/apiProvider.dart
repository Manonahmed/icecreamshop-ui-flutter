import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:training/dio/model/storiesModel.dart';

class ApiProvider {
  final String apiUrl = "http://159.89.4.181:2000/api/v1";
  SuccessStories? successStories;

  Future<SuccessStories?> getStories() async {
    try {
      var response = await Dio().get("$apiUrl/success-stories");
      successStories = SuccessStories.fromJson(response.data);
      print(successStories?.model?[0].title);
      return successStories;
    }catch(e){}


  }
signInEmail({required String email,required String password })async{
  try{
    FormData formData=FormData.fromMap({
      "email":email,"password":password
    });
    Response response=await Dio().post("$apiUrl/auth/email/signin",data: formData);
    print(response.data);
  }catch(e){
    if(e is DioException) {
      print(e.response);
    }
  }
}
}

import 'package:dream_bell_school/Model/UserModel.dart';
import 'package:http/http.dart' as http;
class ApiService{
  Future<UserModel>fetchUsersData()async{
    var response =
        await http.get(Uri.parse("https://school-alarm.com/demo/api/website/homepageslider"));
    if (response.statusCode==200){
      print("ok");
      return userModelFromJson(response.body);
    }
    else{
      throw Exception("Network Error");
    }
  }
}
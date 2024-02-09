import 'package:dream_bell_school/Model/UserModel.dart';
import 'package:dream_bell_school/Service/api_service.dart';
import 'package:get/get.dart';

class UserController extends GetxController{
  var isLoading = true.obs;
  var usersList = <UserModel>[].obs;
  fetchUsers() async{
    try {
      isLoading(true);
      var userData = await ApiService().fetchUsersData();
      //usersList.addAll(userData<UserModel>);
    }catch(e){
      print("Error fetching user data $e");
    }finally{
      isLoading(false);
    }
  }
  @override
  void onInit(){
    fetchUsers();
    super.onInit();
  }

}
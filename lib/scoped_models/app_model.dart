import 'package:scoped_model/scoped_model.dart';

class AppModel extends Model{

  int screenIndex = 0;

  updateScreen(){

    screenIndex+=1;
    if(screenIndex >1) screenIndex = 0;
    notifyListeners();
  }


}
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  Future<void> saveData() async {
    final sharedPrefenreces = await SharedPreferences.getInstance();
    await sharedPrefenreces.setString('name', "GDG");
    await sharedPrefenreces.setInt('age', 22);
  }

  Future<String?> getName() async {
    final sharedPrefenreces = await SharedPreferences.getInstance();
    return sharedPrefenreces.getString('name');
  }

  Future<int?> getAge() async {
    final sharedPrefenreces = await SharedPreferences.getInstance();
    return sharedPrefenreces.getInt('age');
  }
}

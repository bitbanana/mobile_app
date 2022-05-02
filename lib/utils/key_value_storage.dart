import 'package:shared_preferences/shared_preferences.dart';

// ストレージ接続オブジェクトのキャッシュ
SharedPreferences? _chacePrefs;

// ストレージ接続オブジェクトの取得
Future<SharedPreferences> getPrefs() async {
  // null の場合だけ初回読み込みする
  _chacePrefs ??= await SharedPreferences.getInstance();
  return _chacePrefs!;
}

// int
void saveInt(String key, int value) async {
  final prefs = await getPrefs();
  prefs.setInt(key, value);
}

Future<int?> loadInt(String key) async {
  final prefs = await getPrefs();
  prefs.getInt(key);
}

// String
void saveString(String key, String value) async {
  final prefs = await getPrefs();
  prefs.setString(key, value);
}

Future<String?> loadString(String key) async {
  final prefs = await getPrefs();
  return prefs.getString(key);
}

// String List
void saveStringList(String key, List<String> values) async {
  final prefs = await getPrefs();
  prefs.setStringList(key, values);
}

Future<List<String>?> loadStringList(String key) async {
  final prefs = await getPrefs();
  return prefs.getStringList(key);
}

// remove
void remove(String key) async {
  final prefs = await getPrefs();
  prefs.remove(key);
}

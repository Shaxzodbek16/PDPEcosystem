// StorageDataSource nomli class yarating va ichida quyidagicha generic methodlar bo’lsin. Bu methodlarni ko’rpusi bo’lsa yetarli. Real proektlarda qanday network bilan connect qilinadi va quyidagi funksiyalar qanday amal bajarishini Googling qilib o’rganing.
//  1. storeData
//  2. readData
//  3. updateData
//  4. removeData

class StorageDataSource {
  Map<String, Object?> _data = {};

  void storeData<V extends Object?>(String key, V value) {
    _data.addAll({key: value});
  }

  T readData<T extends Object?>(String key) {
    if (!_data.containsKey(key)) {
      print("Not found by $key key");
    }
    return _data[key] as T;
  }

  T updateData<T extends Object?>(String key, T value) {
    if (!_data.containsKey(key)) {
      print("Not found by $key key");
    }
    _data[key] = value;
    return _data[key] as T;
  }

  void removeData(String key) {
    if (!_data.containsKey(key)) {
      print("Not found by $key key");
    }
    _data.remove(key);
  }
}

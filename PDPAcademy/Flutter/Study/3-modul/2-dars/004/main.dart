// StorageRepository nomli abstrakt class hosil qiling. Classda readData,
// storeData va deleteData nomli abstrakt methodlari bo’lsin, u klass ni
// Storage nomli yangi klass yaratib interfeys sifatida ishlating.
// Storage klassida Map<String, Object> turidagi database nomli
// private fieldi bo’lsin va interfyesdagi methodlarni override qiling.

// Override qilingan methodda storeData parametriga key va value
// qabul qiladi va kirib kelgan key va valueni database nomli mapga
// saqlab qo’yadi. readData nomli method esa parametriga key qabul
// qiladi va database nomli mapdan keyga tegishli value qaytaradi.
// deleteData methodi esa parametriga key qabul qiladi va database
// nomli mapdan shu key bilan valuesini o’chirib tashlaydi.
// Yuqoridagi shart asosida klasslarni hosil qiling va void
// mainda interfeysdan foydalanib yuqoridagi 3 ta har xil
// holatlar uchun ishlatib ko’rsating.

abstract class StorageRepository {
  Object readData(String key);

  void storeData(String key, Object value);

  void deleteData(String key);
}

class Storage implements StorageRepository {
  Map<String, Object> _database = {};

  @override
  void deleteData(String key) {
    if (_database.containsKey(key)) {
      _database.remove(key);
    }
    print("Data not found by given key $key");
  }

  @override
  Object readData(String key) {
    if (_database.containsKey(key)) {
      return _database[key]!;
    }
    return 'Not found';
  }

  @override
  void storeData(String key, Object value) {
    _database.addAll({key: value});
  }
}

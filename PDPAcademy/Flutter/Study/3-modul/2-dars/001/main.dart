// StorageRepository nomli repository interface hosil qiling.
// U orqali LocalStorage va CloudStorage sinflarini hosil qiling.

import 'dart:io';

abstract class StorageRepository {
  void save(int key, String data);

  String? read(int key);

  bool update(int key, String newValue);

  void delete(int key);
}

class LocalStorage implements StorageRepository {
  Map<int, String> data = {};

  @override
  void save(int key, String data) {
    if (this.data.containsKey(key)) {
      print("This is already have had");
      this.read(key);
    }
    this.data.addAll({key: data});
  }

  @override
  void delete(int key) {
    data.remove(key);
  }

  @override
  String? read(int key) {
    if (!this.data.containsKey(key)) {
      return 'There is not data with $key';
    }
    return data[key];
  }

  @override
  bool update(int key, String newValue) {
    if (!this.data.containsKey(key)) {
      print('There is not data with $key');
      return false;
    }
    this.data[key] = newValue;
    return true;
  }
}

class CloudStorage implements StorageRepository {
  Map<int, String> data = {};

  @override
  void save(int key, String data) {
    if (this.data.containsKey(key)) {
      print("This is already have had");
      this.read(key);
    }
    this.data.addAll({key: data});
  }

  @override
  void delete(int key) {
    data.remove(key);
  }

  @override
  String? read(int key) {
    if (!this.data.containsKey(key)) {
      return 'There is not data with $key';
    }
    return data[key];
  }

  @override
  bool update(int key, String newValue) {
    if (!this.data.containsKey(key)) {
      print('There is not data with $key');
      return false;
    }
    this.data[key] = newValue;
    return true;
  }
}

// NetworkRepository nomli repository interface hosil qiling.
// U orqali NetworkImplementation nomli sinf hosil qiling.

abstract class NetworkRepository {
  factory NetworkRepository() => NetworkImplementation();

  String fetchData(String url);

  void postData(String url, Map<String, dynamic> data);

  void updateData(String url, Map<String, dynamic> data);

  void deleteData(String url);
}

class NetworkImplementation implements NetworkRepository {
  NetworkImplementation();

  @override
  String fetchData(String url) {
    print('Fetching data from $url');
    return 'Fetched data from $url';
  }

  @override
  void postData(String url, Map<String, dynamic> data) {
    print('Posting data to $url with data: $data');
  }

  @override
  void updateData(String url, Map<String, dynamic> data) {
    print('Updating data at $url with data: $data');
  }

  @override
  void deleteData(String url) {
    print('Deleting data at $url');
  }
}

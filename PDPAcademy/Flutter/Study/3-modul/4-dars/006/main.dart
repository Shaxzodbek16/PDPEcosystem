// NetworkDataSource nomli class yarating va ichida quyidagicha generic
// methodlar bo’lsin. Bu methodlarni ko’rpusi bo’lsa yetarli. Real
// proektlarda qanday network bilan connect qilinadi va quyidagi
// funksiyalar qanday amal bajarishini Googling qilib o’rganing.
//  1. post
//  2. get
//  3. put
//  4. delete
//  5. patch
//  6. multipart

abstract class NetworkDataSource<T> {
  final String baseUrl;

  NetworkDataSource(this.baseUrl);

  T get(String endpoint, {Map<String, String>? headers});

  T post(String endpoint, dynamic body, {Map<String, String>? headers});

  T put(String endpoint, dynamic body, {Map<String, String>? headers});

  T delete(String endpoint, {Map<String, String>? headers});

  T patch(String endpoint, dynamic body, {Map<String, String>? headers});

  T multipartRequest(String endpoint, List<T> files,
      {Map<String, String>? fields});
}

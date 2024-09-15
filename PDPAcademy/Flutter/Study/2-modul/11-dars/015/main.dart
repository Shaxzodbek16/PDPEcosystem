// Quyida yozilgan htmlText ni ichidan headingni ajratib olivchi
// regex yozing va dasturda ishlating.
//  const htmlText = '''
//  <!DOCTYPE html>
//  <html>
//  <body>
//  <h1>Dart Tutorial</h1>
//  <p>Dart is my favorite language.</p>
//  </body>
//  </html>
//  ''';

const htmlText = '''
<!DOCTYPE html>
<html>
<body>
<h1>Dart Tutorial</h1>
<p>Dart is my favorite language.</p>
</body>
</html>
''';

void main() {
  final RegExp regex = RegExp(r'<h1[^>]*>(.*?)</h1>', multiLine: true);

  final match = regex.firstMatch(htmlText);

  if (match != null) {
    final heading = match.group(1);
    print('Heading: $heading');
  } else {
    print('There is no heading');
  }
}

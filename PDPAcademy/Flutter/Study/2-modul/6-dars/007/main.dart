// Article nomli class hosil qiling. Va articles nomli article lar listni
// hosil qiling. Article classida category nomli fieldi bo’lsin.
// Shunday funksiya yozingki parametriga category bersa unga mos
// article larni qaytarsin!
// Misol sifatida quyidagi faylda berilgan rasmdan foydalanishiz mumkin.

class Article {
  String category, name;

  Article({required this.category, required this.name});
}

void main() {
  List<Article> articles = [
    Article(category: 'Newest', name: 'Category 1'),
    Article(category: 'Health', name: 'Category 2'),
    Article(category: 'Covid-19', name: 'Category 3'),
    Article(category: 'LifeStyle', name: 'Category 4'),
    Article(category: 'Newest', name: 'Category 5')
  ];
  print(matchCategory(articles, 'Newest'));
}

List<String> matchCategory(List<Article> articles, String category) {
  List<String> result = articles.fold([], (prev, next) {
    if (next.category == category) prev.add(next.name);
    return prev;
  });
  return result;
}

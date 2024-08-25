// Twitterda chiqarilgan postda yozilgan username(@ - belgi bilan boshlanuvchi
// identifikator) va hashtag(# - belgi bilan boshlanuvchi identifikator)
// larni uppercasega o’tkazuvchi funksiya tuzing.
// Input: Just two weeks until the @TheBookerPrizes shortlist is
// announced! http://bit.ly/bookerprizebso Explore the longlist and support
// indie bookshops #2021BookerPrize #FinestFiction #ChooseIndieLinks
// Output: Just two weeks until the @THEBOOKERPRIZES shortlist is
// announced! http://bit.ly/bookerprizebso Explore the longlist and support
// indie bookshops #2021BOOKERPRIZE #FINESTFICTION
// #CHOOSEINDIELINKS

void main(){
  String input = 'Just two weeks until the @TheBookerPrizes shortlist is ' +
      'announced! http://bit.ly/bookerprizebso Explore the longlist and ' +
      'support indie bookshops #2021BookerPrize #FinestFiction #ChooseIndieLinks';
  print(makeUppercaseMentionsOrHashtags(input));
}

String makeUppercaseMentionsOrHashtags(String postedText){
  List<String> words = postedText.split(" ");
  for(int i = 0; i< words.length; i++){
    if (words[i][0]=='@' || words[i][0] == '#'){
      words[i] = words[i].toUpperCase();
    }
  }
  return words.join(" ");
}
// Icons nomli enhanced enum hosil qiling va elementlar qiymatiga
// uning url ni kiriting.

enum Icons{
  smile('https://emojies/smile/'),
  sad('https://emojies/sad/'),
  bored('https://emojies/bored/'),
  happy('https://emojies/happy/');
  final String url;
  const Icons(this.url);
}

void main(){
  print(Icons.smile.url);
}
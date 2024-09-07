// Images nomli enhanced enum hosil qiling va elementlar
// qiymatiga image larning hotira pathi ni kiriting.

import 'dart:io';

enum Images{
  beginning('images/beginning.png'),
  middle('images/middle.png'),
  end('images/end.png');
  final String path;
  const Images(this.path);
}

void main(){
  final String result = Images.end.path;
  stdout.write(result);
}
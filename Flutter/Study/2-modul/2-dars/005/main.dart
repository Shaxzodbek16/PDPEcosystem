// User nomli class hosil qiling. Bu klassda short-from generative constructor
// i bo’lsin! Quyida hamma fieldlarini non-nullable qilib e’lon qiling
// va late dan foydalanmang:
// • id
// • firstName
// • lastName
// • email
// • userName
// • phone
// • password
// • isSuperUser

class User{
  int id;
  bool isSuperUser;
  String firstName, lastName, email, userName, phone, _password;

  User(this.id, this.isSuperUser,  this.firstName, this.lastName, this.email, this.userName, this.phone, this._password);

  String get password{
    return _password;
  }
   set password(String new_password){
    _password = new_password;
  }
}
// Failure nomli interface hosil qiling!

abstract class Failure {
  String get message;
}

class NetworkFailure implements Failure {
  @override
  String get message => "Network failure occurred";
}

class ServerFailure implements Failure {
  @override
  String get message => "Server failure occurred";
}

class Database implements Failure {
  @override
  String get message => "Database failure occurred";
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class GenaiFirebaseUser {
  GenaiFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

GenaiFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<GenaiFirebaseUser> genaiFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<GenaiFirebaseUser>(
      (user) {
        currentUser = GenaiFirebaseUser(user);
        return currentUser!;
      },
    );

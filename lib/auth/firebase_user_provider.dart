import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class GenerativeAIFirebaseUser {
  GenerativeAIFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

GenerativeAIFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<GenerativeAIFirebaseUser> generativeAIFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<GenerativeAIFirebaseUser>(
      (user) {
        currentUser = GenerativeAIFirebaseUser(user);
        return currentUser!;
      },
    );

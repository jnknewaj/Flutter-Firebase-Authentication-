import 'package:authentication/domain/auth/i_auth_facade.dart';
import 'package:authentication/domain/core/errors.dart';
import 'package:authentication/injection.dart';
import 'package:authentication/res/strings/app_strings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on FirebaseFirestore {
  /// throws [UserNotAuthenticatedError] for unauthenticated user
  Future<DocumentReference> userDocument() async {
    final userIdOption = await getIt<IAuthFacade>().getSignedInUserId();
    final userId = userIdOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection(ConstStrings.uesrs)
        .doc(userId);
  }
}

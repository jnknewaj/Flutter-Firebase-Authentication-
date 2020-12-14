import 'package:authentication/domain/auth/i_auth_facade.dart';
import 'package:authentication/domain/core/errors.dart';
import 'package:authentication/injection.dart';
import 'package:authentication/res/strings/app_strings.dart';
import 'package:firebase_storage/firebase_storage.dart';

extension FirebaseStorageX on FirebaseStorage {
  /// throws [UserNotAuthenticatedError] for unauthenticated user
  Future<Reference> userProfilePicsReference() async {
    final userIdOption = await getIt<IAuthFacade>().getSignedInUserId();
    final userId = userIdOption.getOrElse(() => throw NotAuthenticatedError());
    final dpStorageReference = FirebaseStorage.instance
        .ref()
        .child('${ConstStrings.uesrs}/$userId/${ConstStrings.profilePics}');
    return dpStorageReference;
  }
}

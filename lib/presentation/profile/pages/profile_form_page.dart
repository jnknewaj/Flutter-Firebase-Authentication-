import 'package:authentication/application/profile/profile_form/profile_form_bloc.dart';
import 'package:authentication/domain/core/app_user.dart';
import 'package:authentication/injection.dart';
import 'package:authentication/presentation/profile/widgets/profile_form_widgets.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ProfileFormPage extends StatelessWidget {
  final AppUser appUser;

  const ProfileFormPage({Key key, @required this.appUser}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileFormBloc>()
        ..add(ProfileFormEvent.initialized(optionOf(appUser))),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Edit Profile'),
        ),
        body: BlocConsumer<ProfileFormBloc, ProfileFormState>(
          listenWhen: (prev, curr) =>
              prev.saveFailureOrSuccessOption !=
              curr.saveFailureOrSuccessOption,
          listener: (context, state) {
            state.saveFailureOrSuccessOption.fold(
              () => null,
              (either) {
                either.fold(
                  (profileFailure) {
                    FlushbarHelper.createError(
                      duration: const Duration(seconds: 5),
                      message: profileFailure.map(
                        insufficientPermission: (_) =>
                            'Insufficient Permission',
                        unknownFailure: (_) => 'Unkniwn Error Occurred!',
                      ),
                    ).show(context);
                  },
                  (_) {
                    Navigator.of(context).pop();
                  },
                );
              },
            );
          },
          buildWhen: (prev, curr) => prev.isSaving != curr.isSaving,
          builder: (context, state) {
            return Stack(
              children: [
                ProfileFormWidgets(appUser),
                state.isSaving
                    ? Center(
                        child: Container(
                          height: 80.0,
                          width: 80.0,
                          color: Colors.teal,
                          child: SpinKitWave(color: Colors.white),
                        ),
                      )
                    : Container(),
              ],
            );
          },
        ),
      ),
    );
  }
}

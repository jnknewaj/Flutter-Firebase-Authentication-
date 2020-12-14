// import 'dart:io';
// import 'package:authentication/application/profile/profile_form/profile_form_bloc.dart';
// import 'package:authentication/presentation/profile/widgets/description_field.dart';
// import 'package:authentication/presentation/profile/widgets/gradient_button.dart';
// import 'package:authentication/presentation/profile/widgets/name_field.dart';
// import 'package:authentication/presentation/widgets/circular_image_holder.dart';
// import 'package:authentication/utils/helper.dart';
// import 'package:flushbar/flushbar_helper.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class ProfileFormWidgets extends StatefulWidget {
//   const ProfileFormWidgets();
//   @override
//   _ProfileFormWidgetsState createState() => _ProfileFormWidgetsState();
// }

// class _ProfileFormWidgetsState extends State<ProfileFormWidgets> {
// File imageFile;
// double _scrWidth, _scrHeight;

//   @override
//   Widget build(BuildContext context) {
//     // todo develop screenutils
// _scrWidth = MediaQuery.of(context).size.width;
// _scrHeight = MediaQuery.of(context).size.height;
//     return BlocListener<ProfileFormBloc, ProfileFormState>(
//       listener: (context, state) {
// state.imageUploadFaiureOrSuccessOption.fold(
//   () {},
//   (either) {
//     either.fold(
//       (l) {
//         FlushbarHelper.createError(
//           message: l.map(
//             insufficientPermission: (_) =>
//                 'Insufficient Permission To Upload Image',
//             unknownFailure: (_) =>
//                 'Unknown Error Occurred While Upoading Image',
//           ),
//         );
//       },
//       (r) {
//         // context
//         //     .read<ProfileFormBloc>()
//         //     .add(const ProfileFormEvent.saved());
//       },
//     );
//           },
//         );
//       },
//       child: BlocBuilder<ProfileFormBloc, ProfileFormState>(
// buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
//         builder: (context, state) {
//           return Form(
//             autovalidate: state.showErrorMessages,
//             child: CustomScrollView(
//               slivers: <Widget>[
// SliverToBoxAdapter(
//   child: Padding(
//     padding: const EdgeInsets.all(18.0),
//     child: CircularImageHolder(
//       imageFile: imageFile,
//       imageUrl: context
//           .read<ProfileFormBloc>()
//           .state
//           .appUser
//           .profilePictureUrl,
//       icon: Icons.camera_enhance,
//       imageSize: 30.0,
//       onImageAdded: () async {
//         final image = await Helper.pickImageFromGallery();
//         setState(() {
//           imageFile = image;
//         });
//       },
//     ),
//   ),
// ),
//                 // const SliverToBoxAdapter(child: NameField()),
//                 // const SliverToBoxAdapter(child: DescriptionField()),
// SliverFillRemaining(
//   hasScrollBody: false,
//   child: Align(
//     alignment: Alignment.bottomCenter,
//     child: GradientButton(
//       height: 70,
//       width: 300,
//       onPressed: () {
//         imageFile != null
//             ? context.read<ProfileFormBloc>().add(
//                 ProfileFormEvent.profilePicChanged(imageFile))
//             : context
//                 .read<ProfileFormBloc>()
//                 .add(const ProfileFormEvent.saved());
//       },
//       gradient: const LinearGradient(
//         colors: [
//           Color(0xFF00CCFF),
//           Color(0xFF00CCFF),
//         ],
//       ),
//       child: const Text(
//         'Update Profile',
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 17.0,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     ),
//   ),
// ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'dart:io';

import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:authentication/application/profile/profile_form/profile_form_bloc.dart';
import 'package:authentication/domain/core/app_user.dart';
import 'package:authentication/presentation/profile/widgets/description_field.dart';
import 'package:authentication/presentation/profile/widgets/gradient_button.dart';
import 'package:authentication/presentation/profile/widgets/name_field.dart';
import 'package:authentication/presentation/widgets/circular_image_holder.dart';
import 'package:authentication/utils/helper.dart';

class ProfileFormWidgets extends StatefulWidget {
  final AppUser appUser;
  const ProfileFormWidgets(this.appUser);

  @override
  _ProfileFormWidgetsState createState() => _ProfileFormWidgetsState();
}

class _ProfileFormWidgetsState extends State<ProfileFormWidgets> {
  File imageFile;
  double _scrWidth, _scrHeight;

  @override
  Widget build(BuildContext context) {
    _scrWidth = MediaQuery.of(context).size.width;
    _scrHeight = MediaQuery.of(context).size.height;

    return BlocListener<ProfileFormBloc, ProfileFormState>(
      listener: (context, state) {
        state.imageUploadFaiureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (l) {
                FlushbarHelper.createError(
                  message: l.map(
                    insufficientPermission: (_) =>
                        'Insufficient Permission To Upload Image',
                    unknownFailure: (_) =>
                        'Unknown Error Occurred While Upoading Image',
                  ),
                );
              },
              (r) {
                context
                    .read<ProfileFormBloc>()
                    .add(const ProfileFormEvent.saved());
              },
            );
          },
        );
      },
      child: BlocBuilder<ProfileFormBloc, ProfileFormState>(
        buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return Form(
            autovalidate: state.showErrorMessages,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircularImageHolder(
                      imageUrl: widget.appUser.profilePictureUrl,
                      imageSize: 0.2,
                      imageFile: imageFile,
                      icon: Icons.camera_enhance,
                      onImageAdded: () async {
                        final image = await Helper.pickImageFromGallery();
                        setState(() {
                          imageFile = image;
                        });
                      },
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: NameField()),
                const SliverToBoxAdapter(child: DescriptionField()),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: GradientButton(
                      height: 70,
                      width: 300,
                      onPressed: () {
                        imageFile != null
                            ? context.read<ProfileFormBloc>().add(
                                ProfileFormEvent.profilePicChanged(imageFile))
                            : context
                                .read<ProfileFormBloc>()
                                .add(const ProfileFormEvent.saved());
                      },
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF00CCFF),
                          Color(0xFF00CCFF),
                        ],
                      ),
                      child: const Text(
                        'Update Profile',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

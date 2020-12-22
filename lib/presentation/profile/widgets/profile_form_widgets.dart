import 'dart:io';

import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:authentication/application/profile/profile_form/profile_form_bloc.dart';
import 'package:authentication/domain/core/app_user.dart';
import 'package:authentication/presentation/profile/widgets/description_field.dart';
import 'package:authentication/presentation/profile/widgets/name_field.dart';
import 'package:authentication/utils/helper.dart';
import 'package:super_ui/super_ui.dart';

class ProfileFormWidgets extends StatefulWidget {
  final AppUser appUser;
  const ProfileFormWidgets(this.appUser);

  @override
  _ProfileFormWidgetsState createState() => _ProfileFormWidgetsState();
}

class _ProfileFormWidgetsState extends State<ProfileFormWidgets> {
  File imageFile;

  @override
  Widget build(BuildContext context) {
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
                SliverToBoxAdapter(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: GradientButton(
                      onPressed: () {
                        imageFile != null
                            ? context.read<ProfileFormBloc>().add(
                                ProfileFormEvent.profilePicChanged(imageFile))
                            : context
                                .read<ProfileFormBloc>()
                                .add(const ProfileFormEvent.saved());
                      },
                      gradient: LinearGradient(
                          List: const [Colors.blue, Colors.white]),
                      text: 'Update Profile',
                      width: 160,
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

import 'package:authentication/application/profile/profile_watcher/profile_watcher_bloc.dart';
import 'package:authentication/domain/core/app_user.dart';
import 'package:authentication/injection.dart';
import 'package:authentication/presentation/profile/pages/profile_form_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_ui/super_ui.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileWatcherBloc>()
        ..add(const ProfileWatcherEvent.watchStarted()),
      child: BlocBuilder<ProfileWatcherBloc, ProfileWatcherState>(
        builder: (context, state) {
          return state.map(
            initial: (s) => Center(child: CircularProgressIndicator()),
            loading: (s) => CircularProgressIndicator(),
            loaded: (s) => _ProfilePageUi(appUser: s.appUser),
            failure: (f) {
              return BillboardText(
                text: f.failure.map(
                  insufficientPermission: (_) => 'Insufficient Permission',
                  unknownFailure: (_) => 'Unknown Failure',
                ),
                textType: TextType.error,
              );
            },
          );
        },
      ),
    );
  }
}

class _ProfilePageUi extends StatelessWidget {
  final AppUser appUser;

  const _ProfilePageUi({Key key, @required this.appUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProfileFormPage(appUser: appUser)));
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          children: [
            Center(
              child: CircularImageHolder(
                imageUrl: appUser.profilePictureUrl,
                imageSize: 0.7,
              ),
            ),
            Text(appUser.name.getOrCrash()),
            Text(appUser.emailAddress.getOrCrash()),
          ],
        ),
      ),
    );
  }
}

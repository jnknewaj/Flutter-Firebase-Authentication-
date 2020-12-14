import 'package:authentication/application/auth/auth_check/auth_check_bloc.dart';
import 'package:authentication/application/profile/profile_watcher/profile_watcher_bloc.dart';
import 'package:authentication/injection.dart';
import 'package:authentication/presentation/auth/sign_in_page.dart';
import 'package:authentication/presentation/profile/pages/profile_page.dart';
import 'package:authentication/presentation/widgets/bilboard_text.dart';
import 'package:authentication/presentation/widgets/circular_image_holder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthCheckBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<ProfileWatcherBloc>()
            ..add(const ProfileWatcherEvent.watchStarted()),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Firebase Authentication'),
        ),
        drawer: DrawerWidget(),
        body: Center(
          child: BilboardText(
            text: 'Hello Firebase',
            textType: TextType.Normal,
          ),
        ),
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCheckBloc, AuthCheckState>(
      listener: (context, state) {
        state.maybeMap(
          unAuthenticated: (_) {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => SignInPage()));
          },
          orElse: () {},
        );
      },
      child: BlocBuilder<ProfileWatcherBloc, ProfileWatcherState>(
        builder: (context, state) {
          return Drawer(
            child: ListView(
              children: [
                state.map(
                  initial: (_) => Container(),
                  loading: (_) => Container(),
                  loaded: (s) {
                    return DrawerHeader(
                      decoration: BoxDecoration(color: Colors.pink),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircularImageHolder(
                            imageSize: 0.2,
                            imageUrl: s.appUser.profilePictureUrl,
                          ),
                          Text(s.appUser.name.getOrCrash()),
                          Text(s.appUser.emailAddress.getOrCrash()),
                        ],
                      ),
                    );
                  },
                  failure: (failure) => BilboardText(
                    text: failure.failure.map(
                      insufficientPermission: (_) => 'Insufficient Permission',
                      unknownFailure: (_) => 'Unknown Failure',
                    ),
                    textType: TextType.Error,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.people),
                  title: Text('Profile'),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ProfilePage()));
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.create),
                  title: Text('Sign Out'),
                  onTap: () {
                    context
                        .read<AuthCheckBloc>()
                        .add(const AuthCheckEvent.signOutPressed());
                  },
                ),
                Divider(),
              ],
            ),
          );
        },
      ),
    );
  }
}

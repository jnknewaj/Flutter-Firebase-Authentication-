import 'package:authentication/application/auth/auth_check/auth_check_bloc.dart';
import 'package:authentication/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:authentication/application/profile/profile_form/profile_form_bloc.dart';
import 'package:authentication/injection.dart';
import 'package:authentication/presentation/auth/sign_in_page.dart';
import 'package:authentication/presentation/home/home_page.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_ui/super_ui.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<AuthCheckBloc>(
            create: (context) => getIt<AuthCheckBloc>(),
          ),
          BlocProvider<SignInFormBloc>(
            create: (context) => getIt<SignInFormBloc>(),
          ),
          BlocProvider<ProfileFormBloc>(
            create: (context) => getIt<ProfileFormBloc>(),
          ),
        ],
        child: SignUpForm(),
      ),
    );
  }
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
        listeners: [
          // listener for AuthCheckBloc
          BlocListener<AuthCheckBloc, AuthCheckState>(
            listener: (context, state) {
              state.map(
                initial: (_) {},
                authenticated: (_) {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                unAuthenticated: (_) {},
              );
            },
          ),
          // listener for SignInFormBloc
          BlocListener<SignInFormBloc, SignInFormState>(
            listener: (context, state) {
              // for email password reg
              state.authFailureOrSuccessOption.fold(
                () {},
                (either) => either.fold(
                  (failure) {
                    FlushbarHelper.createError(
                      message: failure.map(
                        cancelledByUser: (_) => 'Cancelled!',
                        serverError: (_) => 'Server Error',
                        emailAlreadyInUse: (_) => 'Email Alreday Registered',
                        invalidEmailPasswordCombination: (_) =>
                            'Invalid Email Password Combination',
                        userDisabled: (_) => 'This Email is Banned to Register',
                      ),
                    ).show(context);
                  },
                  (_) {
                    FlushbarHelper.createInformation(
                            message:
                                'Registered SUccessfully! Please Wait a Moment')
                        .show(context);
                    context
                        .read<ProfileFormBloc>()
                        .add(const ProfileFormEvent.saved());
                  },
                ),
              );
              // for 3rd party sign in
              state.thirdPartyAuthFailureOrSuccessOption.fold(
                () {},
                (failureOrUser) => failureOrUser.fold(
                  (l) {
                    FlushbarHelper.createError(
                      message: l.map(
                        cancelledByUser: (_) => 'Cancelled!',
                        serverError: (_) => 'Server Error',
                        emailAlreadyInUse: (_) => 'Email Alreday Registered',
                        invalidEmailPasswordCombination: (_) =>
                            'Invalid Email Password Combination',
                        userDisabled: (_) => 'This Email is Banned to Register',
                      ),
                    ).show(context);
                  },
                  (appUser) {
                    context
                        .read<ProfileFormBloc>()
                        .add(ProfileFormEvent.thirdPartySignInSaved(appUser));
                  },
                ),
              );
            },
          ),
          // listener for ProfileFormBloc
          BlocListener<ProfileFormBloc, ProfileFormState>(
            listener: (context, state) {
              state.saveFailureOrSuccessOption.fold(
                () {},
                (failedOrSaved) => failedOrSaved.fold(
                  (f) {
                    FlushbarHelper.createError(
                      message: f.map(
                        insufficientPermission: (_) =>
                            'Unable To Create Profile! Insufficient Permission',
                        unknownFailure: (_) =>
                            'Unable To Create Profile! Unknown Error!',
                      ),
                    ).show(context);
                  },
                  (r) {
                    FlushbarHelper.createSuccess(
                            message: 'Profile Created Successfully!')
                        .show(context);
                    context
                        .read<AuthCheckBloc>()
                        .add(const AuthCheckEvent.started());
                  },
                ),
              );
            },
          ),
        ],
        child: BlocBuilder<SignInFormBloc, SignInFormState>(
          builder: (context, state) {
            return Form(
              autovalidate: state.showErrorMessages,
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // text
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 35.0,
                              wordSpacing: 0.1,
                            ),
                          ),
                        ),
                        // name
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.grey[200]),
                            ),
                          ),
                          // todo add name validator
                          child: TextFormField(
                            autocorrect: false,
                            onChanged: (value) {
                              context
                                  .read<ProfileFormBloc>()
                                  .add(ProfileFormEvent.nameChanged(value));
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Name",
                              icon: Icon(
                                Icons.email,
                                color: Colors.black12,
                              ),
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: "sofia",
                              ),
                            ),
                          ),
                        ),
                        // email
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.grey[200]),
                            ),
                          ),
                          child: TextFormField(
                            autocorrect: false,
                            onChanged: (value) {
                              context
                                  .read<SignInFormBloc>()
                                  .add(SignInFormEvent.emailChanged(value));
                              context
                                  .read<ProfileFormBloc>()
                                  .add(ProfileFormEvent.emailChanged(value));
                            },
                            validator: (_) => context
                                .read<SignInFormBloc>()
                                .state
                                .emailAddress
                                .value
                                .fold(
                                  (f) => f.maybeMap(
                                    invalidEmail: (_) => 'Invalid Email',
                                    orElse: () => null,
                                  ),
                                  (_) => null,
                                ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                              icon: Icon(
                                Icons.email,
                                color: Colors.black12,
                              ),
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: "sofia",
                              ),
                            ),
                          ),
                        ),
                        // password
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            autocorrect: false,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              icon: Icon(
                                Icons.vpn_key,
                                color: Colors.black12,
                              ),
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: "sofia",
                              ),
                            ),
                            onChanged: (value) => context
                                .read<SignInFormBloc>()
                                .add(SignInFormEvent.passwordChanged(value)),
                            validator: (_) => context
                                .read<SignInFormBloc>()
                                .state
                                .password
                                .value
                                .fold(
                                  (f) => f.maybeMap(
                                    shortPassword: (_) => 'Short password',
                                    orElse: () => null,
                                  ),
                                  (_) => null,
                                ),
                          ),
                        ),
                        // sign up btn
                        SuperButton(
                          text: 'Sign Up',
                          buttonColor: Theme.of(context).buttonColor,
                          onPressed: () {
                            context.read<SignInFormBloc>().add(
                                  const SignInFormEvent
                                      .registerWithEmailAndPasswordPressed(),
                                );
                          },
                        ),
                        SizedBox(height: 20.0),
                        AuthButton(
                          item: SocialItem.google,
                          onPressed: () {
                            context.read<SignInFormBloc>().add(
                                const SignInFormEvent
                                    .signInWithGooglePressed());
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already Have Account?'),
                            SizedBox(width: 10.0),
                            InkWell(
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                  color: Colors.teal,
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => SignInPage()));
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    state.isSubmitting
                        ? Positioned(
                            left: 0,
                            right: 0,
                            top: 0,
                            bottom: 0,
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
            );
          },
        ));
  }
}

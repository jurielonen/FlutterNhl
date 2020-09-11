import 'dart:math';

import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/firebase/firebase_actions.dart';
import 'package:FlutterNhl/redux/viewmodel/firebase_view_model.dart';
import 'package:FlutterNhl/views/home_page.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, FirebaseViewModel>(
        distinct: true,
        onInit: (store) => store.dispatch(FirebaseInitializingAction()),
        converter: (store) => FirebaseViewModel.fromStore(store),
        builder: (ctx, viewModel) {
          if (viewModel.signedIn) {
            return HomePage();
          } else {
            return Scaffold(
              appBar: AppBar(
                elevation: 2.0,
                title: Text('Sign in'),
              ),
              body: _buildSignIn(viewModel),
            );
          }
        });
  }

  Widget _buildHeader(FirebaseViewModel viewModel) {
    return Text(
      'Sign in Anonymously',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w600),
    );
  }

  Widget _buildSignIn(FirebaseViewModel viewModel) {
    return Center(
      child: LayoutBuilder(builder: (context, constraints) {
        if (viewModel.loadingStatus == LoadingStatus.IDLE) {
          return Container(
              width: min(constraints.maxWidth, 600),
              padding: const EdgeInsets.all(16.0),
              child: ProgressView('Setting up'));
        } else if(viewModel.loadingStatus == LoadingStatus.LOADING){
          return Container(
              width: min(constraints.maxWidth, 600),
              padding: const EdgeInsets.all(16.0),
              child: ProgressView('Checking signing'));
        }
        List<Widget> widgets = [_buildHeader(viewModel),
          const SizedBox(height: 8),
          SignInButton(
            text: 'Sign in',
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
            onPressed: viewModel.loadingStatus == LoadingStatus.LOADING
                ? null
                : () => viewModel.signIn(),
            loading: viewModel.loadingStatus == LoadingStatus.LOADING,
          ),];
        if(viewModel.error != null){
          widgets.add(ErrorView(viewModel.error));
        }
        return Container(
          width: min(constraints.maxWidth, 600),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: widgets,
          ),
        );
      }),
    );
  }
}

class SignInButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final double height;
  final bool loading;
  final VoidCallback onPressed;

  SignInButton(
      {Key key,
      @required this.text,
      @required this.color,
      @required this.onPressed,
      this.textColor = Colors.black87,
      this.height = 50.0,
      this.loading});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(
        child: loading ? buildSpinner(context) : Text(text),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
        ), // height / 2
        color: color,
        disabledColor: color,
        textColor: textColor,
        onPressed: onPressed,
      ),
    );
  }

  Widget buildSpinner(BuildContext context) {
    final ThemeData data = Theme.of(context);
    return Theme(
      data: data.copyWith(accentColor: Colors.white70),
      child: const SizedBox(
        width: 28,
        height: 28,
        child: CircularProgressIndicator(
          strokeWidth: 3.0,
        ),
      ),
    );
  }
}

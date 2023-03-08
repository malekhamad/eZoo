// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Get Started`
  String get get_started {
    return Intl.message(
      'Get Started',
      name: 'get_started',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to\n ezoo`
  String get welcome_msg {
    return Intl.message(
      'Welcome to\n ezoo',
      name: 'welcome_msg',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get enter_email {
    return Intl.message(
      'Enter your email',
      name: 'enter_email',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get enter_password {
    return Intl.message(
      'Enter your password',
      name: 'enter_password',
      desc: '',
      args: [],
    );
  }

  /// `Forget Your Password ?`
  String get forget_password {
    return Intl.message(
      'Forget Your Password ?',
      name: 'forget_password',
      desc: '',
      args: [],
    );
  }

  /// `Start as guest`
  String get start_guest {
    return Intl.message(
      'Start as guest',
      name: 'start_guest',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an Account ?`
  String get no_account {
    return Intl.message(
      'Don\'t have an Account ?',
      name: 'no_account',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `or login with`
  String get or_login_with {
    return Intl.message(
      'or login with',
      name: 'or_login_with',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get name_hint {
    return Intl.message(
      'Enter your name',
      name: 'name_hint',
      desc: '',
      args: [],
    );
  }

  /// `Register to\n ezoo`
  String get register_wlc {
    return Intl.message(
      'Register to\n ezoo',
      name: 'register_wlc',
      desc: '',
      args: [],
    );
  }

  /// `Create an account and shop for your pet`
  String get register_subtitle {
    return Intl.message(
      'Create an account and shop for your pet',
      name: 'register_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number`
  String get phone_hint {
    return Intl.message(
      'Enter your phone number',
      name: 'phone_hint',
      desc: '',
      args: [],
    );
  }

  /// `Have an Account ?`
  String get have_account {
    return Intl.message(
      'Have an Account ?',
      name: 'have_account',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get log_in {
    return Intl.message(
      'Log in',
      name: 'log_in',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your password`
  String get confirm_password {
    return Intl.message(
      'Confirm your password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password ?`
  String get forget_password_title {
    return Intl.message(
      'Forget Password ?',
      name: 'forget_password_title',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email address or your phone number to reset your password.`
  String get forget_password_subtitle {
    return Intl.message(
      'Please enter your email address or your phone number to reset your password.',
      name: 'forget_password_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Send to email address`
  String get send_to_email {
    return Intl.message(
      'Send to email address',
      name: 'send_to_email',
      desc: '',
      args: [],
    );
  }

  /// `Send to phone number`
  String get send_to_phone {
    return Intl.message(
      'Send to phone number',
      name: 'send_to_phone',
      desc: '',
      args: [],
    );
  }

  /// `Check your email`
  String get check_your_email {
    return Intl.message(
      'Check your email',
      name: 'check_your_email',
      desc: '',
      args: [],
    );
  }

  /// `We've sent the code to the`
  String get check_your_email_subtitle {
    return Intl.message(
      'We\'ve sent the code to the',
      name: 'check_your_email_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Code expires in : 00:56`
  String get code_expire {
    return Intl.message(
      'Code expires in : 00:56',
      name: 'code_expire',
      desc: '',
      args: [],
    );
  }

  /// `Didn't get the code ?`
  String get no_code {
    return Intl.message(
      'Didn\'t get the code ?',
      name: 'no_code',
      desc: '',
      args: [],
    );
  }

  /// `Send again`
  String get send_again {
    return Intl.message(
      'Send again',
      name: 'send_again',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message(
      'Verify',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `Verification`
  String get verification {
    return Intl.message(
      'Verification',
      name: 'verification',
      desc: '',
      args: [],
    );
  }

  /// `Enter 4 digit number that sent to your device`
  String get verification_subtitle {
    return Intl.message(
      'Enter 4 digit number that sent to your device',
      name: 'verification_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continue_title {
    return Intl.message(
      'Continue',
      name: 'continue_title',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter \nYour Phone Number`
  String get please_enter_your_phone_number {
    return Intl.message(
      'Please Enter \nYour Phone Number',
      name: 'please_enter_your_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get email_address {
    return Intl.message(
      'Email Address',
      name: 'email_address',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

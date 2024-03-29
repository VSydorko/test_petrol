// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:test_petrol/blocs/index.dart' as _i11;
import 'package:test_petrol/screens/auth/auth_repository.dart' as _i8;
import 'package:test_petrol/screens/auth/bloc/auth_bloc.dart' as _i9;
import 'package:test_petrol/screens/home/messages/chats/bloc/chats_bloc.dart'
    as _i6;
import 'package:test_petrol/screens/home/messages/chats/chats_repository.dart'
    as _i3;
import 'package:test_petrol/screens/home/messages/posts/posts_bloc.dart'
    as _i7;
import 'package:test_petrol/screens/home/messages/posts/posts_repository.dart'
    as _i5;
import 'package:test_petrol/screens/login/login_form_bloc.dart' as _i10;
import 'package:test_petrol/services/http/http_client.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ChatsRepository>(
        () => _i3.ChatsRepository(gh<_i4.HttpClient>()));
    gh.factory<_i5.PostsRepository>(
        () => _i5.PostsRepository(gh<_i4.HttpClient>()));
    gh.lazySingleton<_i6.ChatsBloc>(
        () => _i6.ChatsBloc(repository: gh<_i3.ChatsRepository>()));
    gh.lazySingleton<_i7.PostsBloc>(
        () => _i7.PostsBloc(gh<_i5.PostsRepository>()));
    return this;
  }

  /// initializes the registration of auth-scope dependencies inside of [GetIt]
  _i1.GetIt initAuthScope({_i1.ScopeDisposeFunc? dispose}) {
    return _i2.GetItHelper(this).initScope(
      'auth',
      dispose: dispose,
      init: (_i2.GetItHelper gh) {
        gh.singleton<_i4.HttpClient>(_i4.HttpClient());
        gh.factory<_i8.AuthRepository>(
            () => _i8.AuthRepository(gh<_i4.HttpClient>()));
        gh.singleton<_i9.AuthBloc>(
            _i9.AuthBloc(repository: gh<_i8.AuthRepository>()));
        gh.factory<_i10.LoginFormBloc>(() => _i10.LoginFormBloc(
              authBloc: gh<_i11.AuthBloc>(),
              repository: gh<_i8.AuthRepository>(),
            ));
      },
    );
  }
}

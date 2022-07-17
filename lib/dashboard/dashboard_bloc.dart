import 'package:dio_interceptor_crud/models/user/user_model.dart';
import 'package:rxdart/rxdart.dart';
import 'package:dio_interceptor_crud/login/login_repo.dart';

class UsersBloc {
  final _fetchAllUsers = PublishSubject<List<UsersModel>>();
  final UsersRepository _usersRepository = UsersRepository();

  Stream<List<UsersModel>> get fetchUsersList => _fetchAllUsers.stream;

  fetchAllUsers() async {
    dynamic data = await _usersRepository.fetchAllUsers();
    _fetchAllUsers.sink.add(data);
  }

  void dispose() {
    _fetchAllUsers.close();
  }
}
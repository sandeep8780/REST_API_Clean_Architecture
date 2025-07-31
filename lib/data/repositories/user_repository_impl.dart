import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/user_repository.dart';
import '../sources/user_api.dart';
import '../models/user_model.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi api;

  UserRepositoryImpl(this.api);

  @override
  Future<List<UserEntity>> getAllUsers() async {
    final users = await api.fetchUsers();
    return users.map((e) => UserEntity(id: e.id, name: e.name, email: e.email)).toList();
  }
}

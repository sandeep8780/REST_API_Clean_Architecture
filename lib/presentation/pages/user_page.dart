import 'package:flutter/material.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/usecases/get_users_usecase.dart';
import '../../data/repositories/user_repository_impl.dart';
import '../../data/sources/user_api.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  late GetUsersUseCase useCase;
  List<UserEntity> users = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    useCase = GetUsersUseCase(UserRepositoryImpl(UserApi()));
    fetchUsers();
  }

  void fetchUsers() async {
    users = await useCase.execute();
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Users")),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: users.length,
        itemBuilder: (_, index) {
          final user = users[index];
          return ListTile(
            title: Text(user.name),
            subtitle: Text(user.email),
          );
        },
      ),
    );
  }
}

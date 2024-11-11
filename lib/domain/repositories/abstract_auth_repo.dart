abstract class AbstractAuthRepository {
  Future<bool?> login(String userName, String password);

  Future<void> logout();
}

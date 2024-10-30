abstract class AbstractAuthRepository {
  Future<String> login(String userName, String password);
  Future<void> logout();
}

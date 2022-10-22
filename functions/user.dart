class User {
  late String email;
}

// Получение почтового ящика по заданной маске, с отсечением логина до @
mixin MailAddresses on User {
  getMailSystem(String value) {
    final _mailInStr = RegExp(r'[^@]+$');
    return _mailInStr.stringMatch(value);
  }
}

class AdminUser extends User with MailAddresses {}

class GeneralUser extends User {}

class UserManager<T extends User> {
  Map<String, String> roles = {
    'user': 'user@mail.com',
    'admin': 'admin@mail.ru'
  };

  // Добавление пользователя в список
  void addUser(String role, String email) {
    roles[role] = email;
    print('Пользователь успешно добавлен!');
  }

  // Удаление пользователя из списка
  void removeUser(String role) {
    roles.remove(role);
    print('Пользователь успешно удален!');
  }

  // Отображение списка почтовых ящиков пользователей
  void showEmails<L extends AdminUser>(L data) {
    roles.forEach((key, value) {
      if(identical(key, 'admin')) print(data.getMailSystem(value));
      else print(value);
    });
  }
}

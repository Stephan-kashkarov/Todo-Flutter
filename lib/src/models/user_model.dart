import 'package:intl/intl.dart';
import 'package:password/password.dart';

class UserModel {
	int id;
	String name;
	String bio;
	String email;
	String passhash;
	String createdAt;

	UserModel(password) {
		this.id = 0;
		this.name = "";
		this.bio = "";
		this.email = "";
		this.passhash = Password.hash(password, new PBKDF2());
		this.createdAt = DateFormat('HH:mm:ss | dd.MM.yyyy').format(new DateTime.now());
	}

	bool checkPassword (password) {
		return Password.verify(password, this.passhash);
	}
}
import 'package:linkedin/models/post.dart';
import 'package:linkedin/models/company.dart';
import 'package:linkedin/models/message.dart';
import 'package:linkedin/models/user.dart';

abstract class BaseDataRepository {
  List<User> getUsers();
  List<Company> getCompanies();
  List<Post> getPosts();
  List<Message> getMessages();
}

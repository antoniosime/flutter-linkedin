
import 'package:linkedin/data/data_services.dart';
import 'package:linkedin/models/post.dart';
import 'package:linkedin/models/company.dart';
import 'package:linkedin/models/message.dart';
import 'package:linkedin/models/user.dart';

import 'base_data_repository.dart';

class FakeDataRrepository implements BaseDataRepository {
  static final FakeDataRrepository _singleton =
      new FakeDataRrepository._internal();
  DataServices _dataServices;

  FakeDataRrepository._internal() {
    _dataServices = new DataServices();
  }

  factory FakeDataRrepository() {
    return _singleton;
  }

  @override
  List<Company> getCompanies() {
    return _dataServices.companies;
  }

  @override
  List<Message> getMessages() {
    return _dataServices.messages;
  }

  @override
  List<Post> getPosts() {
    return _dataServices.posts;
  }

  @override
  List<User> getUsers() {
    return _dataServices.users;
  }
}

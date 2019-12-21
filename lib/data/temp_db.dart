import 'package:linkedin/models/company.dart';
import 'package:linkedin/models/user.dart';
import 'package:linkedin/posts/post.dart';

class TempDB {
  List<User> users;
  List<Company> companies;
  List<Post> posts;

  TempDB() {
    users = new List<User>();
    companies = new List<Company>();
    posts = new List<Post>();

    initDB();
  }

  initDB() {
    Company servicePro = new Company(1, "Service Pro", "imageUrl");
    Company amazon = new Company(2, "Amazon",
        "https://www.insopra.com/wp-content/uploads/2019/10/amazon-logo.png");

    users.add(User(
        id: 3,
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));

    users.add(User(
        id: 4,
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));
    users.add(User(
        id: 5,
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));
    users.add(User(
        id: 6,
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));
    users.add(User(
        id: 7,
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));
    users.add(User(
        id: 8,
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));
    users.add(User(
        id: 9,
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));
    users.add(User(
        id: 10,
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));
    users.add(User(
        id: 11,
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));
    users.add(User(
        id: 12,
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));
    users.add(User(
        id: 13,
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));
    users.add(User(
        id: 14,
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));
  }
}

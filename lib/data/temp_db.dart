import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin/models/comment.dart';
import 'package:linkedin/models/company.dart';
import 'package:linkedin/models/contact.dart';
import 'package:linkedin/models/education.dart';
import 'package:linkedin/models/experince.dart';
import 'package:linkedin/models/post.dart';
import 'package:linkedin/models/user.dart';
import 'package:uuid/uuid.dart';

class TempDB {
  static final TempDB _singleton = TempDB._internal();

  List<User> users;
  List<Company> companies;
  List<Post> posts;

  TempDB tempDB;

  factory TempDB() {
    return _singleton;
  }

  TempDB._internal() {
    users = new List<User>();
    companies = new List<Company>();
    posts = new List<Post>();

    initDB();
  }

  initDB() {
    Company servicePro = new Company(
        Uuid().v1(),
        "Service Pro",
        "https://www.insopra.com/wp-content/uploads/2019/10/amazon-logo.png",
        20000);
    companies.add(servicePro);
    Company amazon = new Company(
        Uuid().v1(),
        "Amazon",
        "https://www.insopra.com/wp-content/uploads/2019/10/amazon-logo.png",
        15000);
    companies.add(amazon);
    Company hays = new Company(
        Uuid().v1(),
        "Hays",
        "https://media.licdn.com/dms/image/C4E0BAQGXQuTPgrs_Fw/company-logo_100_100/0?e=1585180800&v=beta&t=AEFXv1pEnjc9LiipZq0sGcDCG-yJEzvd8L7ZlxMjm5I",
        50000);
    companies.add(hays);
    Company pluralsight = new Company(
        Uuid().v1(),
        "Pluralsight",
        "https://media.licdn.com/dms/image/C560BAQEEc69kRzpqzA/company-logo_100_100/0?e=1585180800&v=beta&t=BbhIimL9CJCAZnUZjfE-EVYImhPMa7_gyuaDK7afWF4",
        8900);

    companies.add(pluralsight);

    User u1 = User(
        connections: List<String>(),
        educations: List<Education>(),
        contacts: List<Contact>(),
        id: Uuid().v1(),
        name: "Antonio",
        country: "Macedonia",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY",
        experiences: new List<Experince>());

    u1.experiences.add(new Experince(
        title: "Software Devloper",
        company: servicePro,
        start: DateTime.now(),
        end: DateTime.now()));
    u1.experiences.add(new Experince(
        title: "Software Devloper",
        company: hays,
        start: DateTime.now(),
        end: DateTime.now()));
    u1.experiences.add(new Experince(
        title: "Software Devloper",
        company: servicePro,
        start: DateTime.now(),
        end: DateTime.now()));

    u1.educations.add(new Education(
        title: "Faculty of Computer Science and Engineering - FINKI",
        imageUrl:
            "https://www.finki.ukim.mk/Content/dataImages/downloads/logo-large-500x500_2.png"));

    u1.contacts.add(new Contact(
        iconData: FontAwesomeIcons.linkedin,
        title: "Your Profile",
        content: "https://www.linkedin.com/in/antonio-simeonovski-78a349102/"));
    u1.contacts.add(new Contact(
        title: "Email",
        content: "antoniosimeonovski@gmail.com",
        iconData: FontAwesomeIcons.envelope));

    users.add(u1);

    users.add(User(
        connections: List<String>(),
        id: Uuid().v1(),
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));
    users.add(User(
        connections: List<String>(),
        id: Uuid().v1(),
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));
    users.add(User(
        connections: List<String>(),
        id: Uuid().v1(),
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));
    users.add(User(
        connections: List<String>(),
        id: Uuid().v1(),
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));
    users.add(User(
        connections: List<String>(),
        id: Uuid().v1(),
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));
    users.add(User(
        connections: List<String>(),
        id: Uuid().v1(),
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));
    users.add(User(
        connections: List<String>(),
        id: Uuid().v1(),
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));
    users.add(User(
        connections: List<String>(),
        id: Uuid().v1(),
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));
    users.add(User(
        connections: List<String>(),
        id: Uuid().v1(),
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));
    users.add(User(
        connections: List<String>(),
        id: Uuid().v1(),
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));
    users.add(User(
        connections: List<String>(),
        id: Uuid().v1(),
        name: "Antonio",
        surname: "Simeonovski",
        company: servicePro,
        profesion: "Software Developer",
        imageUrl:
            "https://media.licdn.com/dms/image/C5603AQEyiNfrJtdRPQ/profile-displayphoto-shrink_200_200/0?e=1582156800&v=beta&t=x1ORj_z31bvCjMNx3MFK8OfDnOBojrVS3elAHT73GgY"));

    Post p = new Post(
        Uuid().v1(),
        1,
        amazon.id,
        "Amazon",
        "https://media.licdn.com/dms/image/C4D22AQHUbSKn-OwKkQ/feedshare-shrink_800/0?e=1579737600&v=beta&t=Hpwpk6EO_3H5-ON3cj4i-CpMT1VFo8D-RjXGEnt8NWY",
        "Messages failing to send? Use a dead letter queue with SNS, SQS & Lambda to improve your app's durability & resiliency. https://amzn.to/35UJube",
        new List<String>(),
        new List<Comment>());
    posts.add(p);

    p = new Post(
        Uuid().v1(),
        1,
        hays.id,
        "Hays",
        "https://media.licdn.com/dms/image/sync/C5627AQHwoGEbLllp0g/articleshare-shrink_800/0?e=1577214000&v=beta&t=1jraH7i9zUFf7-idRQI438hwfJvI3ELu79svQ8ONs6k",
        "Have you recently accepted a job offer? Find out why it’s so important to take a break before starting in your new role: https://bddy.me/2MognW5",
        new List<String>(),
        new List<Comment>());

    posts.add(p);

    p = new Post(
        Uuid().v1(),
        1,
        amazon.id,
        "Amazon",
        "https://media.licdn.com/dms/image/C4D22AQG78rHvfTyjYw/feedshare-shrink_2048_1536/0?e=1579737600&v=beta&t=5CqZGyqAaGkYDZVV1lIWn4_OlZXJXvu9npzxHmuLBVE",
        "Didn't get a chance to attend re:Invent this year?  Here is a list of the Management & Governance breakout session videos to hold you over to next year. https://amzn.to/2PNExeM",
        new List<String>(),
        new List<Comment>());
    posts.add(p);

    p = new Post(
        Uuid().v1(),
        1,
        pluralsight.id,
        "Pluralsight",
        "https://media.licdn.com/dms/image/sync/C5627AQHaC-dltPv9Og/articleshare-shrink_800/0?e=1577214000&v=beta&t=zTUQmc4ecxZqnv1pPrY5dny7AXSPxRvbvfTh-DW0-Co",
        "Start the new decade off with a bang. Get 33% off an individual annual or Premium subscription now through December 29.",
        new List<String>(),
        new List<Comment>());
    posts.add(p);
  }
}

class ProductModel {
  String? username;
  List<String>? knownIps;
  Profile? profile;
  String? id;

  ProductModel({this.username, this.knownIps, this.profile, this.id});

  ProductModel.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    knownIps = json['knownIps'].cast<String>();
    profile =
        json['profile'] != null ? new Profile.fromJson(json['profile']) : null;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['knownIps'] = this.knownIps;
    if (this.profile != null) {
      data['profile'] = this.profile!.toJson();
    }
    data['id'] = this.id;
    return data;
  }
}

class Profile {
  String? firstName;
  String? lastName;
  List<int>? staticData;

  Profile({this.firstName, this.lastName, this.staticData});

  Profile.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    staticData = json['staticData'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['staticData'] = this.staticData;
    return data;
  }
}

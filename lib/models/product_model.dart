class ProductModel {
  String? username;
  List<String>? knownIps;
  Profile? profile;
  String? id;

  ProductModel({
    this.username,
    this.knownIps,
    this.profile,
    this.id,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    knownIps = json['knownIps'].cast<String>();
    profile =
        json['profile'] != null ? Profile.fromJson(json['profile']) : null;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username;
    data['knownIps'] = knownIps;
    if (profile != null) {
      data['profile'] = profile!.toJson();
    }
    data['id'] = id;
    return data;
  }
}

class Profile {
  String? firstName;
  String? lastName;
  List<int>? staticData;

  Profile({
    this.firstName,
    this.lastName,
    this.staticData,
  });

  Profile.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    staticData = json['staticData'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['staticData'] = staticData;
    return data;
  }
}

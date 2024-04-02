// class UserModal {
//   String? uId;
//   String? userName;
//   String? email;
//   String? phoneNumber;

//   UserModal(
//       {required this.uId,
//       required this.userName,
//       required this.email,
//       this.phoneNumber});

//   factory UserModal.fromJson(Map<String, dynamic> json) {
//     return UserModal(
//         uId: json['userId'],
//         userName: json['name'],
//         email: json['email'],
//         phoneNumber: json['phoneNumber']);
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'userId': uId,
//       'name': userName,
//       'email': email,
//       'phoneNumber': phoneNumber
//     };
//   }
// }

class UserModel {
  String? uId;
  String? name;
  String? email;
  String? phoneNumber;
  String? address;
  String? profilePic;

  UserModel({
    required this.email,
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.profilePic,
    required this.uId,
  });

  factory UserModel.fromJson(String id, Map<String, dynamic> json) {
    return UserModel(
      email: json['email'],
      name: json['name'],
      phoneNumber: json['phoneNumber'],
      address: json['address'],
      profilePic: json['profilePic'],
      uId: json['userId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber,
      'address': address,
      'profilePic': profilePic,
      'userId': uId,
    };
  }
}
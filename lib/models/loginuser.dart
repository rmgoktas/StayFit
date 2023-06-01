class UserModel {
  String? displayName;
  String? email;
  bool? emailVerified;
  bool? isAnonymous;
  UserMetadata? metadata;
  String? phoneNumber;
  String? photoURL;
  List<UserInfo>? providerData;
  String? refreshToken;
  String? tenantId;
  String? uid;

  UserModel({
    this.displayName,
    this.email,
    this.emailVerified,
    this.isAnonymous,
    this.metadata,
    this.phoneNumber,
    this.photoURL,
    this.providerData,
    this.refreshToken,
    this.tenantId,
    this.uid,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      displayName: json['displayName'],
      email: json['email'],
      emailVerified: json['emailVerified'],
      isAnonymous: json['isAnonymous'],
      metadata: UserMetadata.fromJson(json['metadata']),
      phoneNumber: json['phoneNumber'],
      photoURL: json['photoURL'],
      providerData: (json['providerData'] as List<dynamic>?)
          ?.map((data) => UserInfo.fromJson(data))
          .toList(),
      refreshToken: json['refreshToken'],
      tenantId: json['tenantId'],
      uid: json['uid'],
    );
  }
}

class UserMetadata {
  DateTime? creationTime;
  DateTime? lastSignInTime;

  UserMetadata({
    this.creationTime,
    this.lastSignInTime,
  });

  factory UserMetadata.fromJson(Map<String, dynamic> json) {
    return UserMetadata(
      creationTime: DateTime.parse(json['creationTime']),
      lastSignInTime: DateTime.parse(json['lastSignInTime']),
    );
  }
}

class UserInfo {
  String? displayName;
  String? email;
  String? phoneNumber;
  String? photoURL;
  String? providerId;
  String? uid;

  UserInfo({
    this.displayName,
    this.email,
    this.phoneNumber,
    this.photoURL,
    this.providerId,
    this.uid,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      displayName: json['displayName'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      photoURL: json['photoURL'],
      providerId: json['providerId'],
      uid: json['uid'],
    );
  }
}

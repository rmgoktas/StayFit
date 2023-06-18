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
  int? stepCount;

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
    this.stepCount,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      displayName: json['displayName'],
      email: json['email'],
      emailVerified: json['emailVerified'],
      isAnonymous: json['isAnonymous'],
      metadata: json['metadata'] != null ? UserMetadata.fromJson(json['metadata']) : null,
      phoneNumber: json['phoneNumber'],
      photoURL: json['photoURL'],
      providerData: (json['providerData'] as List<dynamic>?)
          ?.map((data) => UserInfo.fromJson(data))
          .toList(),
      refreshToken: json['refreshToken'],
      tenantId: json['tenantId'],
      uid: json['uid'],
      stepCount: json['stepCount'],
    );
  }

  static UserModel emptyUser() {
    return UserModel(
      displayName: null,
      email: null,
      emailVerified: null,
      isAnonymous: null,
      metadata: null,
      phoneNumber: null,
      photoURL: null,
      providerData: null,
      refreshToken: null,
      tenantId: null,
      uid: null,
      stepCount: null,
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
      creationTime: json['creationTime'] != null ? DateTime.parse(json['creationTime']) : null,
      lastSignInTime: json['lastSignInTime'] != null ? DateTime.parse(json['lastSignInTime']) : null,
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

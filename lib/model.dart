import 'dart:convert';

Result resultFromJson(String str) => Result.fromJson(json.decode(str));

String resultToJson(Result data) => json.encode(data.toJson());

class Result {
  Result({
    this.message,
    this.status,
    this.data,
  });

  String? message;
  bool? status;
  List<Datum>? data;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        message: json["message"],
        status: json["status"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "status": status,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.id,
    this.userId,
    this.clinicId,
    this.roomId,
    this.doctorName,
    this.email,
    this.phoneCountryCode,
    this.phoneNumber,
    this.fcmToken,
    this.gender,
    this.address,
    this.cityId,
    this.languages,
    this.specialityId,
    this.registrationNum,
    this.medicalAuthorityId,
    this.degreeSuffix,
    this.expertiseSubSpecialty,
    this.image,
    this.pdfHeader,
    this.pdfFooter,
    this.scheduleDays,
    this.scheduleTimings,
    this.hoursPerMonth,
    this.agreementFile,
    this.startDate,
    this.agreementRenewDate,
    this.consulationFee,
    this.timePerPatient,
    this.appointmentPhoneNumber,
    this.website,
    this.instagram,
    this.facebook,
    this.youtube,
    this.profileShareCount,
    this.profileVerified,
    this.profileStatus,
    this.resetToken,
    this.onRequest,
    this.prePayEnrolled,
    this.prePayDiscount,
    this.totalExperience,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
    this.status,
    this.rentAmount,
    this.securityAmount,
    this.procedure,
    this.timeslots,
    this.latestTimeslot,
    this.diseaseFocus,
    this.education,
    this.speciality,
    this.timings,
    this.doctorImages,
  });

  int? id;
  dynamic userId;
  String? clinicId;
  String? roomId;
  String? doctorName;
  String? email;
  String? phoneCountryCode;
  String? phoneNumber;
  dynamic fcmToken;
  String? gender;
  String? address;
  dynamic cityId;
  String? languages;
  int? specialityId;
  String? registrationNum;
  dynamic medicalAuthorityId;
  String? degreeSuffix;
  String? expertiseSubSpecialty;
  String? image;
  String? pdfHeader;
  String? pdfFooter;
  String? scheduleDays;
  String? scheduleTimings;
  String? hoursPerMonth;
  String? agreementFile;
  DateTime? startDate;
  DateTime? agreementRenewDate;
  String? consulationFee;
  String? timePerPatient;
  String? appointmentPhoneNumber;
  String? website;
  dynamic instagram;
  dynamic facebook;
  dynamic youtube;
  dynamic profileShareCount;
  int? profileVerified;
  int? profileStatus;
  dynamic resetToken;
  int? onRequest;
  int? prePayEnrolled;
  dynamic prePayDiscount;
  String? totalExperience;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic createdBy;
  int? updatedBy;
  int? status;
  String? rentAmount;
  String? securityAmount;
  List<dynamic>? procedure;
  List<Timeslot>? timeslots;
  Timeslot? latestTimeslot;
  List<dynamic>? diseaseFocus;
  List<dynamic>? education;
  Speciality? speciality;
  List<Timing>? timings;
  List<DoctorImage>? doctorImages;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        userId: json["user_id"],
        clinicId: json["clinic_id"],
        roomId: json["room_id"],
        doctorName: json["doctor_name"],
        email: json["email"],
        phoneCountryCode: json["phone_country_code"],
        phoneNumber: json["phone_number"],
        fcmToken: json["fcm_token"],
        gender: json["gender"],
        address: json["address"],
        cityId: json["city_id"],
        languages: json["languages"],
        specialityId: json["speciality_id"],
        registrationNum: json["registration_num"],
        medicalAuthorityId: json["medical_authority_id"],
        degreeSuffix: json["degree_suffix"],
        expertiseSubSpecialty: json["expertise_subSpecialty"],
        image: json["image"],
        pdfHeader: json["pdf_header"],
        pdfFooter: json["pdf_footer"],
        scheduleDays: json["scheduleDays"],
        scheduleTimings: json["scheduleTimings"],
        hoursPerMonth: json["hours_per_month"],
        agreementFile: json["agreement_file"],
        startDate: DateTime.parse(json["start_date"]),
        agreementRenewDate: DateTime.parse(json["agreement_renew_date"]),
        consulationFee: json["consulationFee"],
        timePerPatient: json["time_per_patient"],
        appointmentPhoneNumber: json["appointment_phone_number"],
        website: json["website"],
        instagram: json["instagram"],
        facebook: json["facebook"],
        youtube: json["youtube"],
        profileShareCount: json["profile_share_count"],
        profileVerified: json["profile_verified"],
        profileStatus: json["profile_status"],
        resetToken: json["reset_token"],
        onRequest: json["on_request"],
        prePayEnrolled: json["pre_pay_enrolled"],
        prePayDiscount: json["pre_pay_discount"],
        totalExperience: json["total_experience"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        status: json["status"],
        rentAmount: json["rent_amount"],
        securityAmount: json["security_amount"],
        procedure: List<dynamic>.from(json["procedure"].map((x) => x)),
        timeslots: List<Timeslot>.from(
            json["timeslots"].map((x) => Timeslot.fromJson(x))),
        latestTimeslot: Timeslot.fromJson(json["latest_timeslot"]),
        diseaseFocus: List<dynamic>.from(json["disease_focus"].map((x) => x)),
        education: List<dynamic>.from(json["education"].map((x) => x)),
        speciality: Speciality.fromJson(json["speciality"]),
        timings:
            List<Timing>.from(json["timings"].map((x) => Timing.fromJson(x))),
        doctorImages: List<DoctorImage>.from(
            json["doctor_images"].map((x) => DoctorImage.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "clinic_id": clinicId,
        "room_id": roomId,
        "doctor_name": doctorName,
        "email": email,
        "phone_country_code": phoneCountryCode,
        "phone_number": phoneNumber,
        "fcm_token": fcmToken,
        "gender": gender,
        "address": address,
        "city_id": cityId,
        "languages": languages,
        "speciality_id": specialityId,
        "registration_num": registrationNum,
        "medical_authority_id": medicalAuthorityId,
        "degree_suffix": degreeSuffix,
        "expertise_subSpecialty": expertiseSubSpecialty,
        "image": image,
        "pdf_header": pdfHeader,
        "pdf_footer": pdfFooter,
        "scheduleDays": scheduleDays,
        "scheduleTimings": scheduleTimings,
        "hours_per_month": hoursPerMonth,
        "agreement_file": agreementFile,
        "start_date":
            "${startDate!.year.toString().padLeft(4, '0')}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}",
        "agreement_renew_date":
            "${agreementRenewDate!.year.toString().padLeft(4, '0')}-${agreementRenewDate!.month.toString().padLeft(2, '0')}-${agreementRenewDate!.day.toString().padLeft(2, '0')}",
        "consulationFee": consulationFee,
        "time_per_patient": timePerPatient,
        "appointment_phone_number": appointmentPhoneNumber,
        "website": website,
        "instagram": instagram,
        "facebook": facebook,
        "youtube": youtube,
        "profile_share_count": profileShareCount,
        "profile_verified": profileVerified,
        "profile_status": profileStatus,
        "reset_token": resetToken,
        "on_request": onRequest,
        "pre_pay_enrolled": prePayEnrolled,
        "pre_pay_discount": prePayDiscount,
        "total_experience": totalExperience,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "created_by": createdBy,
        "updated_by": updatedBy,
        "status": status,
        "rent_amount": rentAmount,
        "security_amount": securityAmount,
        "procedure": List<dynamic>.from(procedure!.map((x) => x)),
        "timeslots": List<dynamic>.from(timeslots!.map((x) => x.toJson())),
        "latest_timeslot": latestTimeslot!.toJson(),
        "disease_focus": List<dynamic>.from(diseaseFocus!.map((x) => x)),
        "education": List<dynamic>.from(education!.map((x) => x)),
        "speciality": speciality!.toJson(),
        "timings": List<dynamic>.from(timings!.map((x) => x.toJson())),
        "doctor_images":
            List<dynamic>.from(doctorImages!.map((x) => x.toJson())),
      };
}

class DoctorImage {
  DoctorImage({
    this.id,
    this.doctorId,
    this.sectionId,
    this.image,
    this.pattern,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.status,
    this.section,
  });

  int? id;
  int? doctorId;
  int? sectionId;
  String? image;
  String? pattern;
  dynamic createdBy;
  dynamic updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? status;
  Section? section;

  factory DoctorImage.fromJson(Map<String, dynamic> json) => DoctorImage(
        id: json["id"],
        doctorId: json["doctor_id"],
        sectionId: json["section_id"],
        image: json["image"],
        pattern: json["pattern"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        status: json["status"],
        section: Section.fromJson(json["section"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "doctor_id": doctorId,
        "section_id": sectionId,
        "image": image,
        "pattern": pattern,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "status": status,
        "section": section!.toJson(),
      };
}

class Section {
  Section({
    this.id,
    this.title,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
    this.status,
  });

  int? id;
  String? title;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic createdBy;
  dynamic updatedBy;
  int? status;

  factory Section.fromJson(Map<String, dynamic> json) => Section(
        id: json["id"],
        title: json["title"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "status": status,
      };
}

class Timeslot {
  Timeslot({
    this.id,
    this.doctorId,
    this.date,
    this.timeFrom,
    this.timeTo,
    this.clinicId,
    this.clinicRoomsId,
    this.bookingStatus,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
    this.status,
  });

  int? id;
  int? doctorId;
  DateTime? date;
  String? timeFrom;
  String? timeTo;
  int? clinicId;
  int? clinicRoomsId;
  int? bookingStatus;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic createdBy;
  dynamic updatedBy;
  int? status;

  factory Timeslot.fromJson(Map<String, dynamic> json) => Timeslot(
        id: json["id"],
        doctorId: json["doctor_id"],
        date: DateTime.parse(json["date"]),
        timeFrom: json["time_from"],
        timeTo: json["time_to"],
        clinicId: json["clinic_id"],
        clinicRoomsId:
            json["clinic_rooms_id"] == null ? null : json["clinic_rooms_id"],
        bookingStatus: json["booking_status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "doctor_id": doctorId,
        "date":
            "${date!.year.toString().padLeft(4, '0')}-${date!.month.toString().padLeft(2, '0')}-${date!.day.toString().padLeft(2, '0')}",
        "time_from": timeFrom,
        "time_to": timeTo,
        "clinic_id": clinicId,
        "clinic_rooms_id": clinicRoomsId == null ? null : clinicRoomsId,
        "booking_status": bookingStatus,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "created_by": createdBy,
        "updated_by": updatedBy,
        "status": status,
      };
}

class Speciality {
  Speciality({
    this.id,
    this.name,
    this.iconUrl,
    this.status,
    this.description,
    this.conditions,
    this.createdAt,
    this.updatedAt,
    this.bgColor1,
    this.bgColor2,
    this.iconColor,
    this.createdBy,
    this.updatedBy,
  });

  int? id;
  String? name;
  String? iconUrl;
  int? status;
  String? description;
  String? conditions;
  dynamic createdAt;
  DateTime? updatedAt;
  String? bgColor1;
  String? bgColor2;
  dynamic iconColor;
  dynamic createdBy;
  dynamic updatedBy;

  factory Speciality.fromJson(Map<String, dynamic> json) => Speciality(
        id: json["id"],
        name: json["name"],
        iconUrl: json["icon_url"],
        status: json["status"],
        description: json["description"],
        conditions: json["conditions"],
        createdAt: json["created_at"],
        updatedAt: DateTime.parse(json["updated_at"]),
        bgColor1: json["bg_color1"],
        bgColor2: json["bg_color2"],
        iconColor: json["icon_color"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "icon_url": iconUrl,
        "status": status,
        "description": description,
        "conditions": conditions,
        "created_at": createdAt,
        "updated_at": updatedAt!.toIso8601String(),
        "bg_color1": bgColor1,
        "bg_color2": bgColor2,
        "icon_color": iconColor,
        "created_by": createdBy,
        "updated_by": updatedBy,
      };
}

class Timing {
  Timing({
    this.id,
    this.doctorId,
    this.scheduleDays,
    this.scheduleTimings,
    this.timePerPatient,
    this.clinicId,
    this.clinicRoomsId,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.status,
    this.clinic,
  });

  int? id;
  int? doctorId;
  String? scheduleDays;
  String? scheduleTimings;
  dynamic timePerPatient;
  int? clinicId;
  int? clinicRoomsId;
  int? createdBy;
  int? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? status;
  Clinic? clinic;

  factory Timing.fromJson(Map<String, dynamic> json) => Timing(
        id: json["id"],
        doctorId: json["doctor_id"],
        scheduleDays: json["scheduleDays"],
        scheduleTimings: json["scheduleTimings"],
        timePerPatient: json["time_per_patient"],
        clinicId: json["clinic_id"],
        clinicRoomsId: json["clinic_rooms_id"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        status: json["status"],
        clinic: Clinic.fromJson(json["clinic"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "doctor_id": doctorId,
        "scheduleDays": scheduleDays,
        "scheduleTimings": scheduleTimings,
        "time_per_patient": timePerPatient,
        "clinic_id": clinicId,
        "clinic_rooms_id": clinicRoomsId,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "status": status,
        "clinic": clinic!.toJson(),
      };
}

class Clinic {
  Clinic({
    this.id,
    this.title,
    this.address,
    this.totalRoooms,
    this.phoneNumber,
    this.gstin,
    this.stateCode,
    this.ipAddressList,
    this.latitude,
    this.longitude,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
    this.status,
    this.rooms,
  });

  int? id;
  String? title;
  String? address;
  int? totalRoooms;
  String? phoneNumber;
  dynamic gstin;
  dynamic stateCode;
  String? ipAddressList;
  String? latitude;
  String? longitude;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic createdBy;
  dynamic updatedBy;
  int? status;
  List<Room>? rooms;

  factory Clinic.fromJson(Map<String, dynamic> json) => Clinic(
        id: json["id"],
        title: json["title"],
        address: json["address"],
        totalRoooms: json["total_roooms"],
        phoneNumber: json["phone_number"],
        gstin: json["GSTIN"],
        stateCode: json["state_code"],
        ipAddressList: json["ip_address_list"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        status: json["status"],
        rooms: List<Room>.from(json["rooms"].map((x) => Room.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "address": address,
        "total_roooms": totalRoooms,
        "phone_number": phoneNumber,
        "GSTIN": gstin,
        "state_code": stateCode,
        "ip_address_list": ipAddressList,
        "latitude": latitude,
        "longitude": longitude,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "status": status,
        "rooms": List<dynamic>.from(rooms!.map((x) => x.toJson())),
      };
}

class Room {
  Room({
    this.id,
    this.clinicId,
    this.roomNumber,
    this.roomType,
    this.mapImage,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
    this.status,
  });

  int? id;
  int? clinicId;
  String? roomNumber;
  int? roomType;
  dynamic mapImage;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic createdBy;
  dynamic updatedBy;
  int? status;

  factory Room.fromJson(Map<String, dynamic> json) => Room(
        id: json["id"],
        clinicId: json["clinic_id"],
        roomNumber: json["room_number"],
        roomType: json["room_type"],
        mapImage: json["map_image"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "clinic_id": clinicId,
        "room_number": roomNumber,
        "room_type": roomType,
        "map_image": mapImage,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "status": status,
      };
}

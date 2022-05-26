// To parse this JSON data, do
//
//     final ipis = ipisFromJson(jsonString);

import 'dart:convert';

List<Ipis> ipisFromJson(String str) =>
    List<Ipis>.from(json.decode(str).map((x) => Ipis.fromJson(x)));

String ipisToJson(List<Ipis> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Ipis {
  Ipis({
    this.indSin,
    this.jobNo,
    this.nationalNo,
    this.dupSeq,
    this.fullNameSum,
    this.firstName,
    this.fatherName,
    this.gFatherName,
    this.forthName,
    this.famlyName,
    this.fullName,
    this.gender,
    this.genderDesc,
    this.motherName,
    this.birthDate,
    this.birthCity,
    this.birthCityDesc,
    this.birthRegion,
    this.birthRegionDesc,
    this.maritalStatusCode,
    this.maritalDesc,
    this.empCode,
    this.empDesc,
    this.branchCode,
    this.branchName,
    this.addressCityCode,
    this.addressCityDesc,
    this.addressRegionCode,
    this.addressRegionDesc,
    this.streetName,
    this.telphonNo1,
    this.telphonNo2,
    this.email,
    this.eduCode,
    this.educationDesc,
    this.qualCode,
    this.qualDesc,
    this.qualSpecCode,
    this.qualSpecDesc,
    this.jobCode,
    this.jobCodeDesc,
    this.jobClassCode,
    this.jobClassDesc,
    this.jobCategory,
    this.jobCtgryDesc,
    this.insuranceStstus,
    this.statusDesc,
    this.hireDate,
    this.servOutDate,
    this.deathDate,
    this.lastBasicSal,
    this.lastVarSal,
  });

  String? indSin;
  String? jobNo;
  String? nationalNo;
  String? dupSeq;
  String? fullNameSum;
  String? firstName;
  String? fatherName;
  String? gFatherName;
  String? forthName;
  String? famlyName;
  String? fullName;
  String? gender;
  String? genderDesc;
  String? motherName;
  String? birthDate;
  String? birthCity;
  String? birthCityDesc;
  String? birthRegion;
  String? birthRegionDesc;
  String? maritalStatusCode;
  String? maritalDesc;
  String? empCode;
  String? empDesc;
  String? branchCode;
  String? branchName;
  String? addressCityCode;
  String? addressCityDesc;
  String? addressRegionCode;
  String? addressRegionDesc;
  String? streetName;
  String? telphonNo1;
  String? telphonNo2;
  String? email;
  String? eduCode;
  String? educationDesc;
  String? qualCode;
  String? qualDesc;
  String? qualSpecCode;
  String? qualSpecDesc;
  String? jobCode;
  String? jobCodeDesc;
  String? jobClassCode;
  String? jobClassDesc;
  String? jobCategory;
  String? jobCtgryDesc;
  String? insuranceStstus;
  String? statusDesc;
  String? hireDate;
  String? servOutDate;
  String? deathDate;
  String? lastBasicSal;
  String? lastVarSal;

  factory Ipis.fromJson(Map<String, dynamic> json) => Ipis(
        indSin: json["IND_SIN"] == null ? null : json["IND_SIN"],
        jobNo: json["JOB_NO"] == null ? null : json["JOB_NO"],
        nationalNo: json["NATIONAL_NO"] == null ? null : json["NATIONAL_NO"],
        dupSeq: json["DUP_SEQ"] == null ? null : json["DUP_SEQ"],
        fullNameSum:
            json["FULL_NAME_SUM"] == null ? null : json["FULL_NAME_SUM"],
        firstName: json["FIRST_NAME"] == null ? null : json["FIRST_NAME"],
        fatherName: json["FATHER_NAME"] == null ? null : json["FATHER_NAME"],
        gFatherName:
            json["G_FATHER_NAME"] == null ? null : json["G_FATHER_NAME"],
        forthName: json["FORTH_NAME"] == null ? null : json["FORTH_NAME"],
        famlyName: json["FAMLY_NAME"] == null ? null : json["FAMLY_NAME"],
        fullName: json["FULL_NAME"] == null ? null : json["FULL_NAME"],
        gender: json["GENDER"] == null ? null : json["GENDER"],
        genderDesc: json["GENDER_DESC"] == null ? null : json["GENDER_DESC"],
        motherName: json["MOTHER_NAME"] == null ? null : json["MOTHER_NAME"],
        birthDate: json["BIRTH_DATE"] == null ? null : json["BIRTH_DATE"],
        birthCity: json["BIRTH_CITY"] == null ? null : json["BIRTH_CITY"],
        birthCityDesc:
            json["BIRTH_CITY_DESC"] == null ? null : json["BIRTH_CITY_DESC"],
        birthRegion: json["BIRTH_REGION"] == null ? null : json["BIRTH_REGION"],
        birthRegionDesc: json["BIRTH_REGION_DESC"] == null
            ? null
            : json["BIRTH_REGION_DESC"],
        maritalStatusCode: json["MARITAL_STATUS_CODE"] == null
            ? null
            : json["MARITAL_STATUS_CODE"],
        maritalDesc: json["MARITAL_DESC"] == null ? null : json["MARITAL_DESC"],
        empCode: json["EMP_CODE"] == null ? null : json["EMP_CODE"],
        empDesc: json["EMP_DESC"] == null ? null : json["EMP_DESC"],
        branchCode: json["BRANCH_CODE"] == null ? null : json["BRANCH_CODE"],
        branchName: json["BRANCH_NAME"] == null ? null : json["BRANCH_NAME"],
        addressCityCode: json["ADDRESS_CITY_CODE"] == null
            ? null
            : json["ADDRESS_CITY_CODE"],
        addressCityDesc: json["ADDRESS_CITY_DESC"] == null
            ? null
            : json["ADDRESS_CITY_DESC"],
        addressRegionCode: json["ADDRESS_REGION_CODE"] == null
            ? null
            : json["ADDRESS_REGION_CODE"],
        addressRegionDesc: json["ADDRESS_REGION_DESC"] == null
            ? null
            : json["ADDRESS_REGION_DESC"],
        streetName: json["STREET_NAME"] == null ? null : json["STREET_NAME"],
        telphonNo1: json["TELPHON_NO1"] == null ? null : json["TELPHON_NO1"],
        telphonNo2: json["TELPHON_NO2"] == null ? null : json["TELPHON_NO2"],
        email: json["EMAIL"] == null ? null : json["EMAIL"],
        eduCode: json["EDU_CODE"] == null ? null : json["EDU_CODE"],
        educationDesc:
            json["EDUCATION_DESC"] == null ? null : json["EDUCATION_DESC"],
        qualCode: json["QUAL_CODE"] == null ? null : json["QUAL_CODE"],
        qualDesc: json["QUAL_DESC"] == null ? null : json["QUAL_DESC"],
        qualSpecCode:
            json["QUAL_SPEC_CODE"] == null ? null : json["QUAL_SPEC_CODE"],
        qualSpecDesc:
            json["QUAL_SPEC_DESC"] == null ? null : json["QUAL_SPEC_DESC"],
        jobCode: json["JOB_CODE"] == null ? null : json["JOB_CODE"],
        jobCodeDesc:
            json["JOB_CODE_DESC"] == null ? null : json["JOB_CODE_DESC"],
        jobClassCode:
            json["JOB_CLASS_CODE"] == null ? null : json["JOB_CLASS_CODE"],
        jobClassDesc:
            json["JOB_CLASS_DESC"] == null ? null : json["JOB_CLASS_DESC"],
        jobCategory: json["JOB_CATEGORY"] == null ? null : json["JOB_CATEGORY"],
        jobCtgryDesc:
            json["JOB_CTGRY_DESC"] == null ? null : json["JOB_CTGRY_DESC"],
        insuranceStstus:
            json["INSURANCE_STSTUS"] == null ? null : json["INSURANCE_STSTUS"],
        statusDesc: json["STATUS_DESC"] == null ? null : json["STATUS_DESC"],
        hireDate: json["HIRE_DATE"] == null ? null : json["HIRE_DATE"],
        servOutDate:
            json["SERV_OUT_DATE"] == null ? null : json["SERV_OUT_DATE"],
        deathDate: json["DEATH_DATE"] == null ? null : json["DEATH_DATE"],
        lastBasicSal:
            json["LAST_BASIC_SAL"] == null ? null : json["LAST_BASIC_SAL"],
        lastVarSal: json["LAST_VAR_SAL"] == null ? null : json["LAST_VAR_SAL"],
      );

  Map<String, dynamic> toJson() => {
        "IND_SIN": indSin == null ? null : indSin,
        "JOB_NO": jobNo == null ? null : jobNo,
        "NATIONAL_NO": nationalNo == null ? null : nationalNo,
        "DUP_SEQ": dupSeq == null ? null : dupSeq,
        "FULL_NAME_SUM": fullNameSum == null ? null : fullNameSum,
        "FIRST_NAME": firstName == null ? null : firstName,
        "FATHER_NAME": fatherName == null ? null : fatherName,
        "G_FATHER_NAME": gFatherName == null ? null : gFatherName,
        "FORTH_NAME": forthName == null ? null : forthName,
        "FAMLY_NAME": famlyName == null ? null : famlyName,
        "FULL_NAME": fullName == null ? null : fullName,
        "GENDER": gender == null ? null : gender,
        "GENDER_DESC": genderDesc == null ? null : genderDesc,
        "MOTHER_NAME": motherName == null ? null : motherName,
        "BIRTH_DATE": birthDate == null ? null : birthDate,
        "BIRTH_CITY": birthCity == null ? null : birthCity,
        "BIRTH_CITY_DESC": birthCityDesc == null ? null : birthCityDesc,
        "BIRTH_REGION": birthRegion == null ? null : birthRegion,
        "BIRTH_REGION_DESC": birthRegionDesc == null ? null : birthRegionDesc,
        "MARITAL_STATUS_CODE":
            maritalStatusCode == null ? null : maritalStatusCode,
        "MARITAL_DESC": maritalDesc == null ? null : maritalDesc,
        "EMP_CODE": empCode == null ? null : empCode,
        "EMP_DESC": empDesc == null ? null : empDesc,
        "BRANCH_CODE": branchCode == null ? null : branchCode,
        "BRANCH_NAME": branchName == null ? null : branchName,
        "ADDRESS_CITY_CODE": addressCityCode == null ? null : addressCityCode,
        "ADDRESS_CITY_DESC": addressCityDesc == null ? null : addressCityDesc,
        "ADDRESS_REGION_CODE":
            addressRegionCode == null ? null : addressRegionCode,
        "ADDRESS_REGION_DESC":
            addressRegionDesc == null ? null : addressRegionDesc,
        "STREET_NAME": streetName == null ? null : streetName,
        "TELPHON_NO1": telphonNo1 == null ? null : telphonNo1,
        "TELPHON_NO2": telphonNo2 == null ? null : telphonNo2,
        "EMAIL": email == null ? null : email,
        "EDU_CODE": eduCode == null ? null : eduCode,
        "EDUCATION_DESC": educationDesc == null ? null : educationDesc,
        "QUAL_CODE": qualCode == null ? null : qualCode,
        "QUAL_DESC": qualDesc == null ? null : qualDesc,
        "QUAL_SPEC_CODE": qualSpecCode == null ? null : qualSpecCode,
        "QUAL_SPEC_DESC": qualSpecDesc == null ? null : qualSpecDesc,
        "JOB_CODE": jobCode == null ? null : jobCode,
        "JOB_CODE_DESC": jobCodeDesc == null ? null : jobCodeDesc,
        "JOB_CLASS_CODE": jobClassCode == null ? null : jobClassCode,
        "JOB_CLASS_DESC": jobClassDesc == null ? null : jobClassDesc,
        "JOB_CATEGORY": jobCategory == null ? null : jobCategory,
        "JOB_CTGRY_DESC": jobCtgryDesc == null ? null : jobCtgryDesc,
        "INSURANCE_STSTUS": insuranceStstus == null ? null : insuranceStstus,
        "STATUS_DESC": statusDesc == null ? null : statusDesc,
        "HIRE_DATE": hireDate == null ? null : hireDate,
        "SERV_OUT_DATE": servOutDate == null ? null : servOutDate,
        "DEATH_DATE": deathDate == null ? null : deathDate,
        "LAST_BASIC_SAL": lastBasicSal == null ? null : lastBasicSal,
        "LAST_VAR_SAL": lastVarSal == null ? null : lastVarSal,
      };
}

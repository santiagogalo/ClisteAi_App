class LanguageModel {
  final String nameapp;
  final String nameHome;
  final String nameAI;
  final String introtexto;
  final String signinup;
  final String google;
  final String mail;
  final String seleclanguage;
  final String termandcon;
  final String textAccept;
  final String textAceptPersonaldata;
  final String personaldataandpyp;
  final String accepttext;
  final String addmailtext;
  final String addmailhinttext;
  final String addpasswordtext;
  final String addpasswordhinttext;
  final String addnametext;
  final String addnamehinttext;
  final String addlastnametext;
  final String addlastnamehinttext;
  final String entermailtext;
  final String entermailhinttext;
  final String enterpasswordtext;
  final String enterpasswordhinttext;
  final String acquisitionwebtitle;
  final String acquisitionwebsubtitle;
  final String acquisitionwebtext;
  final String acquisitionwebAcceptbottom;
  final String acquisitionwebRechazedbottom;
  final String acceptacquisitionwebText;
  final String acceptacquisitionwebhinttext;
  final String hometitle;
  final String appbarcoinname;
  final String buttombarhomebottomtext;
  final String buttombarstatsbottomtext;
  final String buttombarprofilebottomtext;
  final String newproyectTitle;
  final String newproyectuploadimage;
  final String cameraselect;
  final String galleryselect;
  final String newproyectnametext;
  final String newproyectnamehinttext;
  final String newproyectselecttype;
  final String newproyectselecttext;
  final String selecttypeprojecttitle;
  final String supporttext;
  final String moderationtext;
  final String bookingtext;
  final String ecommercetext;
  final String detailsprojecttabchats;
  final String detailsprojecttabimplementations;
  final String detailsprojecttabsettings;
  final String detailsprojectfiltersall;
  final String detailsprojectfiltersonlywhatsapp;
  final String detailsprojectfiltersonlydiscord;
  final String detailsprojectfiltersonlyWebchat;
  final String detailsprojectimplementationtitleWhatsapp;
  final String detailsprojectimplementationdescriptionWhatsapp;
  final String detailsprojectimplementationtitleDiscord;
  final String detailsprojectimplementationdescriptionDiscord;
  final String detailsprojectimplementationtitleWeb;
  final String detailsprojectimplementationdescription;
  final String chatstitletypeWhatsapp;
  final String chatstitletypeDiscord;
  final String chatstitletypeWeb;
  final String chatsbottomunlockchat;
  final String chatswaitingresponse;
  final String chatshinttext;
  final String chatsdaterecent;
  final String chatsdaterecents;
  final String chatshour;
  final String chatsMinute;
  final String emailvali;
  final String passwordvali;
  final String namevali;
  final String lastnamevali;
  final String projectnamevali;
  final String projecttypevali;
  final String projecturlvali;
  final String passwordLengthError;
  final String uppercaseError;
  final String lowercaseError;
  LanguageModel({
    required this.nameapp,
    required this.nameHome,
    required this.nameAI,
    required this.introtexto,
    required this.signinup,
    required this.google,
    required this.mail,
    required this.seleclanguage,
    required this.termandcon,
    required this.textAccept,
    required this.textAceptPersonaldata,
    required this.personaldataandpyp,
    required this.accepttext,
    required this.addmailtext,
    required this.addmailhinttext,
    required this.addpasswordtext,
    required this.addpasswordhinttext,
    required this.addnametext,
    required this.addnamehinttext,
    required this.addlastnametext,
    required this.addlastnamehinttext,
    required this.entermailtext,
    required this.entermailhinttext,
    required this.enterpasswordtext,
    required this.enterpasswordhinttext,
    required this.acquisitionwebtitle,
    required this.acquisitionwebsubtitle,
    required this.acquisitionwebtext,
    required this.acquisitionwebAcceptbottom,
    required this.acquisitionwebRechazedbottom,
    required this.acceptacquisitionwebText,
    required this.acceptacquisitionwebhinttext,
    required this.hometitle,
    required this.appbarcoinname,
    required this.buttombarhomebottomtext,
    required this.buttombarstatsbottomtext,
    required this.buttombarprofilebottomtext,
    required this.newproyectTitle,
    required this.newproyectuploadimage,
    required this.cameraselect,
    required this.galleryselect,
    required this.newproyectnametext,
    required this.newproyectnamehinttext,
    required this.newproyectselecttype,
    required this.newproyectselecttext,
    required this.selecttypeprojecttitle,
    required this.supporttext,
    required this.moderationtext,
    required this.bookingtext,
    required this.ecommercetext,
    required this.detailsprojecttabchats,
    required this.detailsprojecttabimplementations,
    required this.detailsprojecttabsettings,
    required this.detailsprojectfiltersall,
    required this.detailsprojectfiltersonlywhatsapp,
    required this.detailsprojectfiltersonlydiscord,
    required this.detailsprojectfiltersonlyWebchat,
    required this.detailsprojectimplementationtitleWhatsapp,
    required this.detailsprojectimplementationdescriptionWhatsapp,
    required this.detailsprojectimplementationtitleDiscord,
    required this.detailsprojectimplementationdescriptionDiscord,
    required this.detailsprojectimplementationtitleWeb,
    required this.detailsprojectimplementationdescription,
    required this.chatstitletypeWhatsapp,
    required this.chatstitletypeDiscord,
    required this.chatstitletypeWeb,
    required this.chatsbottomunlockchat,
    required this.chatswaitingresponse,
    required this.chatshinttext,
    required this.chatsdaterecent,
    required this.chatsdaterecents,
    required this.chatshour,
    required this.chatsMinute,
    required this.emailvali,
    required this.passwordvali,
    required this.namevali,
    required this.lastnamevali,
    required this.projectnamevali,
    required this.projecttypevali,
    required this.projecturlvali,
    required this.passwordLengthError,
    required this.uppercaseError,
    required this.lowercaseError,
  });

  factory LanguageModel.fromJson(Map<String, dynamic> json) {
    return LanguageModel(
      nameapp: json['nameapp'],
      nameHome: json['nameHome'],
      nameAI: json['nameAI'],
      introtexto: json['introtexto'],
      signinup: json['signinup'],
      google: json['google'],
      mail: json['mail'],
      seleclanguage: json['seleclanguage'],
      termandcon: json['termandcon'],
      textAccept: json['textAccept'],
      textAceptPersonaldata: json['textAceptPersonaldata'],
      personaldataandpyp: json['personaldataandpyp'],
      accepttext: json['accepttext'],
      addmailtext: json['addmailtext'],
      addmailhinttext: json['addmailhinttext'],
      addpasswordtext: json['addpasswordtext'],
      addpasswordhinttext: json['addpasswordhinttext'],
      addnametext: json['addnametext'],
      addnamehinttext: json['addnamehinttext'],
      addlastnametext: json['addlastnametext'],
      addlastnamehinttext: json['addlastnamehinttext'],
      entermailtext: json['entermailtext'],
      entermailhinttext: json['entermailhinttext'],
      enterpasswordtext: json['enterpasswordtext'],
      enterpasswordhinttext: json['enterpasswordhinttext'],
      acquisitionwebtitle: json['acquisitionwebtitle'],
      acquisitionwebsubtitle: json['acquisitionwebsubtitle'],
      acquisitionwebtext: json['acquisitionwebtext'],
      acquisitionwebAcceptbottom: json['acquisitionwebAcceptbottom'],
      acquisitionwebRechazedbottom: json['acquisitionwebRechazedbottom'],
      acceptacquisitionwebText: json['acceptacquisitionwebText'],
      acceptacquisitionwebhinttext: json['acceptacquisitionwebhinttext'],
      hometitle: json['hometitle'],
      appbarcoinname: json['appbarcoinname'],
      buttombarhomebottomtext: json['buttombarhomebottomtext'],
      buttombarstatsbottomtext: json['buttombarstatsbottomtext'],
      buttombarprofilebottomtext: json['buttombarprofilebottomtext'],
      newproyectTitle: json['newproyectTitle'],
      newproyectuploadimage: json['newproyectuploadimage'],
      cameraselect: json['cameraselect'],
      galleryselect: json['galleryselect'],
      newproyectnametext: json['newproyectnametext'],
      newproyectnamehinttext: json['newproyectnamehinttext'],
      newproyectselecttype: json['newproyectselecttype'],
      newproyectselecttext: json['newproyectselecttext'],
      selecttypeprojecttitle: json['selecttypeprojecttitle'],
      supporttext: json['supporttext'],
      moderationtext: json['moderationtext'],
      bookingtext: json['bookingtext'],
      ecommercetext: json['ecommercetext'],
      detailsprojecttabchats: json['detailsprojecttabchats'],
      detailsprojecttabimplementations:
          json['detailsprojecttabimplementations'],
      detailsprojecttabsettings: json['detailsprojecttabsettings'],
      detailsprojectfiltersall: json['detailsprojectfiltersall'],
      detailsprojectfiltersonlywhatsapp:
          json['detailsprojectfiltersonlywhatsapp'],
      detailsprojectfiltersonlydiscord:
          json['detailsprojectfiltersonlydiscord'],
      detailsprojectfiltersonlyWebchat:
          json['detailsprojectfiltersonlyWebchat'],
      detailsprojectimplementationtitleWhatsapp:
          json['detailsprojectimplementationtitleWhatsapp'],
      detailsprojectimplementationdescriptionWhatsapp:
          json['detailsprojectimplementationdescriptionWhatsapp'],
      detailsprojectimplementationtitleDiscord:
          json['detailsprojectimplementationtitleDiscord'],
      detailsprojectimplementationdescriptionDiscord:
          json['detailsprojectimplementationdescriptionDiscord'],
      detailsprojectimplementationtitleWeb:
          json['detailsprojectimplementationtitleWeb'],
      detailsprojectimplementationdescription:
          json['detailsprojectimplementationdescription'],
      chatstitletypeWhatsapp: json['chatstitletypeWhatsapp'],
      chatstitletypeDiscord: json['chatstitletypeDiscord'],
      chatstitletypeWeb: json['chatstitletypeWeb'],
      chatsbottomunlockchat: json['chatsbottomunlockchat'],
      chatswaitingresponse: json['chatswaitingresponse'],
      chatshinttext: json['chatshinttext'],
      chatsdaterecent: json['chatsdaterecent'],
      chatsdaterecents: json['chatsdaterecents'],
      chatshour: json['chatshour'],
      chatsMinute: json['chatsMinute'],
      emailvali: json['emailvali'],
      passwordvali: json['passwordvali'],
      namevali: json['namevali'],
      lastnamevali: json['lastnamevali'],
      projectnamevali: json['projectnamevali'],
      projecttypevali: json['projecttypevali'],
      projecturlvali: json['projecturlvali'],
      passwordLengthError: json['passwordLengthError'],
      uppercaseError: json['uppercaseError'],
      lowercaseError: json['lowercaseError'],
    );
  }
}

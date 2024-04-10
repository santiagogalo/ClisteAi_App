import 'package:clisteai/domain/entities/language.dart';
import 'package:clisteai/view/pages/ui/styles/Text_Style.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Langauages {
  static Map<LanguageCode, LanguageModel> translation = {
    LanguageCode.es: LanguageModel.fromJson({
      "nameapp": "ClisteAI",
      "nameHome": "CListe",
      "nameAI": "AI",
      "introtexto": "Regístrate en",
      "signinup": "Continuar con",
      "google": "Google",
      "mail": "Correo",
      "seleclanguage": "Selecciona el idioma",
      "termandcon": "Términos y condiciones",
      "textAccept": "Acepto los",
      "textAceptPersonaldata": "Acepto expresamente la autorización de",
      "personaldataandpyp":
          """tratamiento de datos personales de IntellyDev y política de privacidad""",
      "accepttext": "Aceptar",
      "addmailtext": "Agrega tu correo",
      "addmailhinttext": "Tu Correo",
      "addpasswordtext": "¿Qué contraseña escogerás?",
      "addpasswordhinttext": "Tu contraseña",
      "addnametext": "¿Cuál es tu nombre?",
      "addnamehinttext": "Tu nombre",
      "addlastnametext": "¿Cuál es tu Apellido?",
      "addlastnamehinttext": "Tu apellido",
      "entermailtext": "Ingresa tu correo",
      "entermailhinttext": "Tu correo",
      "enterpasswordtext": "Ingresa tu contraseña",
      "enterpasswordhinttext": "Tu contraseña",
      "acquisitionwebtitle": "Sitio Web",
      "acquisitionwebsubtitle": "¿Ya has adquirido tu sitio web en ClisteAI?",
      "acquisitionwebtext":
          """Si ya has adquirido un sitio web en ClisteAI, simplemente ingresa la URL proporcionada. De lo contrario, al acceder a la plataforma, notaremos que la URL no está registrada en nuestra base de datos y te sugeriremos los pasos necesarios para completar el proceso de adquisición.""",
      "acquisitionwebAcceptbottom": "¡Sí, tengo uno!",
      "acquisitionwebRechazedbottom": "No, aún no tengo.",
      "acceptacquisitionwebText": "¿Cuál es tu url de sitio?",
      "acceptacquisitionwebhinttext": "sitioweb.com",
      "hometitle": "Tus proyectos",
      "appbarcoinname": "C\$",
      "buttombarhomebottomtext": "Inicio",
      "buttombarstatsbottomtext": "Estadisticas",
      "buttombarprofilebottomtext": "Perfil",
      "newproyectTitle": "Nuevo proyecto",
      "newproyectuploadimage": "Subir imagen",
      "cameraselect": "Tomar una foto",
      "galleryselect": "Subir imagen",
      "newproyectnametext": "Nombre del proyecto",
      "newproyectnamehinttext": "Ingresa el nombre...",
      "newproyectselecttype": "Selecciona el tipo de proyecto",
      "newproyectselecttext": "Seleccionar",
      "selecttypeprojecttitle": "Selecciona el tipo de proyecto",
      "supporttext": "Soporte",
      "moderationtext": "Moderación",
      "bookingtext": "Reservas",
      "ecommercetext": "Ecommerce",
      "detailsprojecttabchats": "Conversaciones",
      "detailsprojecttabimplementations": "Implementaciones",
      "detailsprojecttabsettings": "Configuraciones",
      "detailsprojectfiltersall": "Todos",
      "detailsprojectfiltersonlywhatsapp": "Solo Whatsapp",
      "detailsprojectfiltersonlydiscord": "Solo Discord",
      "detailsprojectfiltersonlyWebchat": "Solo WebChat's",
      "detailsprojectimplementationtitleWhatsapp": "Whatsapp",
      "detailsprojectimplementationdescriptionWhatsapp":
          """La implementación de WhatsApp permitirá que tu bot funcione a través de un número de teléfono registrado en WhatsApp.""",
      "detailsprojectimplementationtitleDiscord": "Discord",
      "detailsprojectimplementationdescriptionDiscord":
          """La implementación de Discord permitirá que tu bot funcione a través de un servidor de Discord.""",
      "detailsprojectimplementationtitleWeb": "Web",
      "detailsprojectimplementationdescription":
          """Este servicio solo se puede configurar y activar desde el panel web de ClisteAI.""",
      "chatstitletypeWhatsapp": "Whatsapp",
      "chatstitletypeDiscord": "Discord",
      "chatstitletypeWeb": "WebChat",
      "chatsbottomunlockchat": "Desbloquear conversación",
      "chatswaitingresponse": "Esperando respuesta",
      "chatshinttext": "Mensaje...",
      "chatsdaterecent": "Hace un momento",
      "chatsdaterecents": "Hace",
      "chatshour": "Horas",
      "chatsMinute": "Minutos",
      'emailvali': "Por favor, ingresa un correo electrónico válido.",
      'passwordvali': "Por favor, ingresa una contraseña.",
      'namevali': "Por favor, ingresa tu nombre.",
      'lastnamevali': "Por favor, ingresa tu apellido.",
      'projectnamevali': "Por favor, ingresa un nombre para tu proyecto.",
      'projecttypevali': "Selecciona el tipo de proyecto.",
      "projecturlvali":
          "Por favor, ingresa una URL válida para asociar tu proyecto.",
      'passwordLengthError': "Debe tener más de 8 caracteres.",
      'uppercaseError': "Debe contener al menos una mayúscula.",
      'lowercaseError': "Debe contener al menos una minúscula."
    }),
    LanguageCode.en: LanguageModel.fromJson({
      "nameapp": "ClisteAI",
      "nameHome": "CListe",
      "nameAI": "AI",
      "introtexto": "Sign up for",
      "signinup": "Continue with",
      "google": "Google",
      "mail": "Email",
      "seleclanguage": "Select language",
      "termandcon": "Terms and conditions",
      "textAccept": "I accept the",
      "textAceptPersonaldata": "I expressly accept the authorization of",
      "personaldataandpyp":
          "IntellyDev's personal data treatment and privacy policy",
      "accepttext": "Accept",
      "addmailtext": "Add your email",
      "addmailhinttext": "Your Email",
      "addpasswordtext": "What password will you choose?",
      "addpasswordhinttext": "Your password",
      "addnametext": "What's your name?",
      "addnamehinttext": "Your name",
      "addlastnametext": "What's your Last Name?",
      "addlastnamehinttext": "Your last name",
      "entermailtext": "Enter your email",
      "entermailhinttext": "Your email",
      "enterpasswordtext": "Enter your password",
      "enterpasswordhinttext": "Your password",
      "acquisitionwebtitle": "Website",
      "acquisitionwebsubtitle":
          "Have you already acquired your website on ClisteAI?",
      "acquisitionwebtext":
          "If you have already acquired a website on ClisteAI, simply enter the provided URL. Otherwise, by accessing the platform, we will notice that the URL is not registered in our database and we will suggest the necessary steps to complete the acquisition process.",
      "acquisitionwebAcceptbottom": "Yes, I have one!",
      "acquisitionwebRechazedbottom": "No, I don't have one yet.",
      "acceptacquisitionwebText": "What's your site url?",
      "acceptacquisitionwebhinttext": "website.com",
      "hometitle": "Your projects",
      "appbarcoinname": "C\$",
      "buttombarhomebottomtext": "Home",
      "buttombarstatsbottomtext": "Statistics",
      "buttombarprofilebottomtext": "Profile",
      "newproyectTitle": "New project",
      "newproyectuploadimage": "Upload image",
      "cameraselect": "Take a photo",
      "galleryselect": "Upload image",
      "newproyectnametext": "Project name",
      "newproyectnamehinttext": "Enter the name...",
      "newproyectselecttype": "Select project type",
      "newproyectselecttext": "Select",
      "selecttypeprojecttitle": "Select project type",
      "supporttext": "Support",
      "moderationtext": "Moderation",
      "bookingtext": "Bookings",
      "ecommercetext": "Ecommerce",
      "detailsprojecttabchats": "Conversations",
      "detailsprojecttabimplementations": "Implementations",
      "detailsprojecttabsettings": "Settings",
      "detailsprojectfiltersall": "All",
      "detailsprojectfiltersonlywhatsapp": "Only Whatsapp",
      "detailsprojectfiltersonlydiscord": "Only Discord",
      "detailsprojectfiltersonlyWebchat": "Only WebChat's",
      "detailsprojectimplementationtitleWhatsapp": "Whatsapp",
      "detailsprojectimplementationdescriptionWhatsapp":
          "The WhatsApp implementation will allow your bot to work through a phone number registered on WhatsApp.",
      "detailsprojectimplementationtitleDiscord": "Discord",
      "detailsprojectimplementationdescriptionDiscord":
          "The Discord implementation will allow your bot to work through a Discord server.",
      "detailsprojectimplementationtitleWeb": "Web",
      "detailsprojectimplementationdescription":
          "This service can only be configured and activated from the ClisteAI web panel.",
      "chatstitletypeWhatsapp": "Whatsapp",
      "chatstitletypeDiscord": "Discord",
      "chatstitletypeWeb": "WebChat",
      "chatsbottomunlockchat": "Unlock conversation",
      "chatswaitingresponse": "Waiting for response",
      "chatshinttext": "Message...",
      "chatsdaterecent": "A moment ago",
      "chatsdaterecents": "Ago",
      "chatshour": "Hours",
      "chatsMinute": "Minutes",
      'emailvali': "Please enter a valid email address.",
      'passwordvali': "Please enter a password.",
      'namevali': "Please enter your name.",
      'lastnamevali': "Please enter your last name.",
      'projectnamevali': "Please enter a name for your project.",
      'projecttypevali': "Select the project type.",
      "projecturlvali":
          "Please enter a valid URL to associate with your project.",
      'passwordLengthError': "Must be more than 8 characters.",
      'uppercaseError': "Must contain at least one uppercase letter.",
      'lowercaseError': "Must contain at least one lowercase letter."
    }),
    LanguageCode.pt: LanguageModel.fromJson({
      "nameapp": "ClisteAI",
      "nameHome": "CListe",
      "nameAI": "AI",
      "introtexto": "Registre-se em",
      "signinup": "Continuar com",
      "google": "Google",
      "mail": "Correio",
      "seleclanguage": "Selecione o idioma",
      "termandcon": "Termos e Condições",
      "textAccept": "Eu aceito os",
      "textAceptPersonaldata": "Eu expressamente aceito a autorização de",
      "personaldataandpyp":
          "tratamento de dados pessoais da IntellyDev e política de privacidade",
      "accepttext": "Aceitar",
      "addmailtext": "Adicione seu email",
      "addmailhinttext": "Seu e-mail",
      "addpasswordtext": "Que senha você vai escolher?",
      "addpasswordhinttext": "Sua senha",
      "addnametext": "Qual é o seu nome?",
      "addnamehinttext": "Seu nome",
      "addlastnametext": "Qual é o seu Sobrenome?",
      "addlastnamehinttext": "Seu sobrenome",
      "entermailtext": "Digite seu email",
      "entermailhinttext": "Seu email",
      "enterpasswordtext": "Digite sua senha",
      "enterpasswordhinttext": "Sua senha",
      "acquisitionwebtitle": "Website",
      "acquisitionwebsubtitle": "Você já adquiriu seu site no ClisteAI?",
      "acquisitionwebtext":
          "Se você já adquiriu um site no ClisteAI, basta inserir a URL fornecida. Caso contrário, ao acessar a plataforma, notaremos que a URL não está registrada em nosso banco de dados e sugeriremos as etapas necessárias para completar o processo de aquisição.",
      "acquisitionwebAcceptbottom": "Sim, eu tenho um!",
      "acquisitionwebRechazedbottom": "Não, ainda não tenho.",
      "acceptacquisitionwebText": "Qual é a sua url do site?",
      "acceptacquisitionwebhinttext": "sitioweb.com",
      "hometitle": "Seus projetos",
      "appbarcoinname": "C\$",
      "buttombarhomebottomtext": "Casa",
      "buttombarstatsbottomtext": "Estatisticas",
      "buttombarprofilebottomtext": "Perfil",
      "newproyectTitle": "Novo projeto",
      "newproyectuploadimage": "Enviar imagem",
      "cameraselect": "Tirar uma foto",
      "galleryselect": "Carregar imagem",
      "newproyectnametext": "Nome do projeto",
      "newproyectnamehinttext": "Digite o nome...",
      "newproyectselecttype": "Selecione o tipo de projeto",
      "newproyectselecttext": "Selecione",
      "selecttypeprojecttitle": "Selecione o tipo de projeto",
      "supporttext": "Apoio",
      "moderationtext": "Moderação",
      "bookingtext": "Reservas",
      "ecommercetext": "E-commerce",
      "detailsprojecttabchats": "Conversas",
      "detailsprojecttabimplementations": "Implementações",
      "detailsprojecttabsettings": "Configurações",
      "detailsprojectfiltersall": "Todos",
      "detailsprojectfiltersonlywhatsapp": "Apenas WhatsApp",
      "detailsprojectfiltersonlydiscord": "Somente Discord",
      "detailsprojectfiltersonlyWebchat": "Apenas WebChat",
      "detailsprojectimplementationtitleWhatsapp": "Whatsapp",
      "detailsprojectimplementationdescriptionWhatsapp":
          "A implementação do WhatsApp permitirá que seu bot funcione por meio de um número de telefone registrado no WhatsApp.",
      "detailsprojectimplementationtitleDiscord": "Discord",
      "detailsprojectimplementationdescriptionDiscord":
          "A implementação do Discord permitirá que seu bot funcione por meio de um servidor do Discord.",
      "detailsprojectimplementationtitleWeb": "Web",
      "detailsprojectimplementationdescription":
          "Este serviço só pode ser configurado e ativado no painel da web do ClisteAI.",
      "chatstitletypeWhatsapp": "Whatsapp",
      "chatstitletypeDiscord": "Discord",
      "chatstitletypeWeb": "WebChat",
      "chatsbottomunlockchat": "Desbloquear conversa",
      "chatswaitingresponse": "Esperando resposta",
      "chatshinttext": "Mensagem...",
      "chatsdaterecent": "Há um momento",
      "chatsdaterecents": "Há",
      "chatshour": "Horas",
      "chatsMinute": "Minutos",
      'emailvali': "Por favor, insira um endereço de e-mail válido.",
      'passwordvali': "Por favor, insira uma senha.",
      'namevali': "Por favor, insira seu nome.",
      'lastnamevali': "Por favor, insira seu sobrenome.",
      'projectnamevali': "Por favor, insira um nome para seu projeto.",
      'projecttypevali': "Selecione o tipo de projeto.",
      "projecturlvali":
          "Por favor, insira uma URL válida para associar ao seu projeto.",
      'passwordLengthError': "Deve ter mais de 8 caracteres.",
      'uppercaseError': "Deve conter pelo menos uma letra maiúscula.",
      'lowercaseError': "Deve conter pelo menos uma letra minúscula."
    })
  };
  static LanguageModel getTranslations(LanguageCode code) {
    return translation[code]!;
  }

  static Map<String, dynamic> getSelectdataLanguage(LanguageCode code) {
    return titleSelectLanguage[code]!;
  }

  static Map<LanguageCode, Map<String, dynamic>> titleSelectLanguage = {
    LanguageCode.en: {"title": "English", "image": ImagesVsg().englishflag},
    LanguageCode.es: {"title": "Español", "image": ImagesVsg().spainflag},
    LanguageCode.pt: {"title": "Português", "image": ImagesVsg().portuguesflag},
  };
}

enum LanguageCode {
  es, // Español
  en, // Inglés
  pt, // Portugues
}

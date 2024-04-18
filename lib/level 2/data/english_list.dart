import 'package:learn/level 2/models/English_model.dart';
List<EnglishModel> questions=[
  EnglishModel("Select the correctly spelled word:" , {
    "Acommodate":false,
    " Accommodate":true,
    "Acommmodate":false,
    " Accomodate":false
  }),
  EnglishModel("Which type of noun represents a person, place, thing, or idea?", {
    "Collective noun":false,
    "Abstract noun":false,
    " Proper noun":false,
    "Common noun":true,
  }),
 EnglishModel("Choose the grammatically correct sentence:", {
  "They plays soccer every Saturday.":false,
  "They play soccer every Saturday.":true,
  "  They playing soccer every Saturday.":false,
  "They playings soccer every Saturday.":false

  }),

  EnglishModel("Which word in the sentence 'The cat chased the mouse yesterday' is a noun?", {
"chased":false,
    "the":false,
    "yesterday":false,
    " cat":true,
  }),

  EnglishModel("Which of the following sentences is grammatically correct?", {
    "Him is going to the store.":false,
    "He am going to the store.":false,
    " He is going to the store.":true,
    "He are going to the store.":false,
  }),
  EnglishModel("What is the noun in the sentence:We enjoyed the movie last night. ", {
  "night":false,
  "movie":true,
    "we":false,
    "last":false,
  }),

  EnglishModel("In the sentence 'The herd of cattle grazed in the field,'what type of noun is 'herd'?", {
    "Collective noun":true,
    " Abstract noun":false,
    " Proper noun":false,
    "Common noun":false,
  }),
  EnglishModel("Choose the correct spelling:",{
    "freind":false,
    " frend":false,
    "friend":true,
    "frendd":false

  }),

  EnglishModel("Which type of noun represents a specific individual item and is always capitalized?", {
    "Common noun":false,
    "Abstract noun":false,
    "Collective noun":false,
    "Proper noun":true,
  }),
  EnglishModel("Choose the noun in the following sentence: 'The sun shines brightly.'", {
    " shines":false,
    "brightly":false,
    "the":false,
    "sun":true,
  }),
];



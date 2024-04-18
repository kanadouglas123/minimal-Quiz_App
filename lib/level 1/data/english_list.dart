import 'package:learn/level 1/models/English_model.dart';
List<EnglishModel> questions=[
  EnglishModel("Identify the possessive noun in the sentence: The cat's tail swished angrily." , {
    "tail":false,
    "cat's":true,
    "angrily":false,
    "swished":false
  }),
 EnglishModel("Choose the correctly spelled word:", {
  "occassion":false,
  " occasion":true,
  " ocassion":false,
  "occasson":false

  }),

  EnglishModel("Select the sentence that is grammatically correct:", {
"The teacher has gave us our assignments.":false,
    "He have been studying for the exam all week.":false,
    "She sings beautifully at the concert last night.":false,
    "We will have finished the project by tomorrow.":true,
  }),
  EnglishModel("Choose the correctly spelled word:", {
    "necesary":false,
    "neccessary":false,
    " necessary":true,
    "nessessary":false
      }),
  EnglishModel("Identify the noun clause in the sentence: What you said surprised everyone.", {
    " said":true,
    " everyone":false,
    " what you said":false,
    " surprised":false,
  }),
  EnglishModel("Identify the collective noun in the sentence: The herd of elephants moved silently through the jungle.", {
    "jungle":false,
    " silently":false,
    " moved":false,
    "herd":true,
  }),
  EnglishModel("Identify the appositive noun in the sentence: My friend John, the artist, painted a beautiful mural.", {
    "beautiful":false,
    "artist":true,
    "mural":false,
    "painted":false
  }),
  EnglishModel("Select the sentence with correct punctuation:", {
    " Are you coming to the party tonight":false,
    "She said, Let's go to the beach.":true,
    "The concert starts at 7:00 pm sharp.":false,
    "Bring your umbrella, it's raining outside.":false
  }),
  EnglishModel("Select the sentence with correct verb tense:", {
    " She will goes to the store after school.":false,
    "They have went to the museum last weekend.":false,
    "We are watching a movie tonight.":true,
    "He will finishing his homework soon.":false
  }),
  EnglishModel("Choose the correctly spelled word:", {
"arguement":false,
    " argument":true,
    "argument":false,
    "arguiment":false
  }),
  
  ];

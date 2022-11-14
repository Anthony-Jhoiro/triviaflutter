# triviaflutter

M2 Flutter project

## Usefull commands

### Generate model with mason
```bash
mason make model --model_name MODEL_NAME --additionals "[copyWith, json, equatable]" --style freezed
```

API : opentrivia database https://opentdb.com/


10 questions par user par jours
le premier joueur qui se connecte tous les jours charge les questions et les stock dans firebase,
les autres users récupèrent les questions depuis firebase et envoient les réponses à firebase

chaque question a une difficulté qui correspondra à l'ajout de point de l'utilisateur

les users recoivent les questions et les réponses en même temps

---

Pour la prochaine fois
date comme id du document
et ajouter la function pour récupérer les questions de l'api si elles sont pas dans firesotre, les ajouter à firestore et supprimer les autres dates

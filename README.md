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



# RESCATHAR-2

## Structure du projet

Les fichiers "keep" sont juste là pour dire à Git d'enregistrer les dossiers (parce que Git n'enregistre pas les dossiers vides). Dès que vous mettez un truc dans un dossier vide, vous pouvez supprimer le fichier keep (c'est juste un fichier texte vide).

Liste non-exhaustive et qui peut changer de l'organisation du projet. Il faudra créer des sous-dossiers pour grouper les trucs similaires et qu'on s'y retrouve bien. Par exemple dans resources on aura un sous-dossier tilesets, un sous-dossier audio etc.

resources : Ressources générales du projet. Fichiers audio, polices d'écritures, fichiers ressources de Godot (.tres), etc. On va essayer de grouper les assets graphiques et autres par objet (donc les sprites du joueur seront dans le dossier du joueur, ce sera plus simple)

scenes : Les nodes qui seront utilisés comme scènes à la fin. Généralement contiendra les différentes maps/niveaux, etc. Un sous-dossier par scène.

nodes : Tous les objets qu'on incluera dans d'autres scènes, par exemple : Player, Villager, Enemy, Navigation Map etc.

ui/components : Tous les composants d'interface réutilisables, comme un timer, un compteur de villageois etc.

ui/menus : Tous les menus, menu principal, menu de pause etc.

globals : Tous les singletons et les trucs qu'on utilisera un peu partout, comme par exemple un module audio, un changeur de scène, un script qui contient des constantes etc.

## Règles de nommage

Règle générale : Ne mettez pas de caractères spéciaux ou d'accents dans les noms de fichiers. Donc que du alphanumérique [a-z][0-9]
C'est mieux si on utilise un maximum l'anglais dans nos noms (plus court, et on peut montrer notre code sur des commus anglaises)

### Fichiers et dossiers

En kebab-case : minuscule en remplaçant les espaces par des tirets
Ex : Mon fichié d'la mort qui tue > mon-fichie-dla-mort-qui-tue (la faute est intentionnelle, wesh)

### Scripts et nodes

En PascalCase, sans espace en commençant chaque nouveau mot par une majuscule.
Ex : Mon node trop bien wéshe > MonNodeTropBienWesh

### Variables et fonctions

En snake_case : minuscule en remplaçant les espaces par des tirets du bas _
Ex : Ma fonction pétée > ma_fonction_petee

### Github

Sur github, on peut se permettre d'utiliser du français (vu que c'est pour nous là)
Pour chaque commit, donnez un titre suffisamment court et qui explique les modifs apportées
"Déplacement joueur", "Pathfinding ennemi", "Menu principal", "Fix de tel bug" etc.

Vous pouvez ajouter une description si vous jugez ça nécessaire

Pour les branches : les nommer en kebab-case sans accents. On va mettre en place des catégories de branches pour mieux s'y retrouver.
Une branche = une fonctionnalité ou un truc d'ajouté. Essayez de le respecter au max. Dès qu'une fonctionnalité est terminée, on merge avec le master et on crée une nouvelle branche.

#### feat/ma-branche

Les branches "feat" comme "features" pour ajouter une fonctionnalité au jeu. Par exemple
feat/deplacement-joueur
feat/ia-enemi
feat/incendie-maisons

#### fix/ma-branche

Les branches "fix" comme "fixer" un bug/le réparer, c'est les branches pour fixer des bugs. A voir comment on les nomme si on garde un registre des bugs ou pas.

#### hotfix/ma-branche

Pour faire un ou plusieurs petits fixs, genre une valeur à changer, une faute d'orthographe à corriger, une petite erreur d'import.

#### other/ma-branche

Pour tout le reste, notamment ajouter des assets. Par exemple des musiques, tilemaps etc.
other/player-sprites
other/tilesets-1
# RESCATHAR-2

## Structure du projet

Les fichiers "keep" sont juste l� pour dire � Git d'enregistrer les dossiers (parce que Git n'enregistre pas les dossiers vides). D�s que vous mettez un truc dans un dossier vide, vous pouvez supprimer le fichier keep (c'est juste un fichier texte vide).

Liste non-exhaustive et qui peut changer de l'organisation du projet. Il faudra cr�er des sous-dossiers pour grouper les trucs similaires et qu'on s'y retrouve bien. Par exemple dans resources on aura un sous-dossier tilesets, un sous-dossier audio etc.

resources : Ressources g�n�rales du projet. Fichiers audio, polices d'�critures, fichiers ressources de Godot (.tres), etc. On va essayer de grouper les assets graphiques et autres par objet (donc les sprites du joueur seront dans le dossier du joueur, ce sera plus simple)

scenes : Les nodes qui seront utilis�s comme sc�nes � la fin. G�n�ralement contiendra les diff�rentes maps/niveaux, etc. Un sous-dossier par sc�ne.

nodes : Tous les objets qu'on incluera dans d'autres sc�nes, par exemple : Player, Villager, Enemy, Navigation Map etc.

ui/components : Tous les composants d'interface r�utilisables, comme un timer, un compteur de villageois etc.

ui/menus : Tous les menus, menu principal, menu de pause etc.

globals : Tous les singletons et les trucs qu'on utilisera un peu partout, comme par exemple un module audio, un changeur de sc�ne, un script qui contient des constantes etc.

## R�gles de nommage

R�gle g�n�rale : Ne mettez pas de caract�res sp�ciaux ou d'accents dans les noms de fichiers. Donc que du alphanum�rique [a-z][0-9]
C'est mieux si on utilise un maximum l'anglais dans nos noms (plus court, et on peut montrer notre code sur des commus anglaises)

### Fichiers et dossiers

En kebab-case : minuscule en rempla�ant les espaces par des tirets
Ex : Mon fichi� d'la mort qui tue > mon-fichie-dla-mort-qui-tue (la faute est intentionnelle, wesh)

### Scripts et nodes

En PascalCase, sans espace en commen�ant chaque nouveau mot par une majuscule.
Ex : Mon node trop bien w�she > MonNodeTropBienWesh

### Variables et fonctions

En snake_case : minuscule en rempla�ant les espaces par des tirets du bas _
Ex : Ma fonction p�t�e > ma_fonction_petee

### Github

Sur github, on peut se permettre d'utiliser du fran�ais (vu que c'est pour nous l�)
Pour chaque commit, donnez un titre suffisamment court et qui explique les modifs apport�es
"D�placement joueur", "Pathfinding ennemi", "Menu principal", "Fix de tel bug" etc.

Vous pouvez ajouter une description si vous jugez �a n�cessaire

Pour les branches : les nommer en kebab-case sans accents. On va mettre en place des cat�gories de branches pour mieux s'y retrouver.
Une branche = une fonctionnalit� ou un truc d'ajout�. Essayez de le respecter au max. D�s qu'une fonctionnalit� est termin�e, on merge avec le master et on cr�e une nouvelle branche.

#### feat/ma-branche

Les branches "feat" comme "features" pour ajouter une fonctionnalit� au jeu. Par exemple
feat/deplacement-joueur
feat/ia-enemi
feat/incendie-maisons

#### fix/ma-branche

Les branches "fix" comme "fixer" un bug/le r�parer, c'est les branches pour fixer des bugs. A voir comment on les nomme si on garde un registre des bugs ou pas.

#### hotfix/ma-branche

Pour faire un ou plusieurs petits fixs, genre une valeur � changer, une faute d'orthographe � corriger, une petite erreur d'import.

#### other/ma-branche

Pour tout le reste, notamment ajouter des assets. Par exemple des musiques, tilemaps etc.
other/player-sprites
other/tilesets-1
# Sherlock 13

## Description du Projet
Sherlock 13 est une adaptation numérique du jeu de société du même nom. Le but du jeu est de résoudre une enquête en identifiant le coupable parmi plusieurs suspects. Les joueurs posent des questions pour obtenir des indices et éliminer les suspects jusqu'à ce qu'ils trouvent le coupable.

Ce projet utilise la bibliothèque SDL2 pour l'interface graphique et gère la communication entre les joueurs via un serveur TCP.

---

## Structure du Projet

Le projet est organisé en plusieurs dossiers pour faciliter la gestion des fichiers et des ressources :

### 1. **`src`**
   - Contient le code source du projet.
   - Fichiers principaux :
     - `sh13.c` : Code du client, gère l'interface graphique et les interactions des joueurs.
     - `server.c` : Code du serveur, gère la logique du jeu et la communication entre les joueurs.

### 2. **`docs`**
   - Contient la documentation du projet.
   - Fichiers inclus :
     - Le rapport du projet.
     - Les règles du jeu Sherlock 13.

### 3. **`images`**
   - Contient les ressources graphiques utilisées dans le jeu.
   - Exemples :
     - Les images des cartes des suspects.
     - Les icônes des objets.
     - Les boutons (comme "Go" et "Connect").

### 4. **`fonts`**
   - Contient les polices utilisées pour afficher le texte dans l'interface graphique.
   - Exemple : `sans.ttf`.

---

## Instructions pour Lancer le Projet

### 1. **Prérequis**
   - Installer les bibliothèques suivantes :
     - SDL2
     - SDL2_image
     - SDL2_ttf
   - Un compilateur C (comme `gcc`).
   - L'outil `make` pour la compilation.

### 2. **Compilation**
   - Compiler le projet en utilisant `make` :
     ```bash
     make
     ```
   - Les exécutables seront générés dans le dossier [bin](http://_vscodecontentref_/0).

### 3. **Exécution**
   - **Lancer le serveur :**
     Ouvrir un terminal et exécuter la commande suivante :
     ```bash
     ./bin/server <port>
     ```
     Exemple :
     ```bash
     ./bin/server 8080
     ```

   - **Lancer les clients :**
     Chaque joueur doit ouvrir un terminal et exécuter la commande suivante :
     ```bash
     ./bin/sh13 <ip_serveur> <port_serveur> <ip_client> <port_client> <nom_joueur>
     ```
     Exemple :
     ```bash
     ./bin/sh13 127.0.0.1 8080 127.0.0.1 9090 marie
     ./bin/sh13 127.0.0.1 8080 127.0.0.1 9091 alex
     ./bin/sh13 127.0.0.1 8080 127.0.0.1 9092 bob
     ./bin/sh13 127.0.0.1 8080 127.0.0.1 9093 alice
     ```

---

## Règles du Jeu
Les règles du jeu Sherlock 13 sont disponibles dans le dossier [docs](http://_vscodecontentref_/0). Consultez ce fichier ainsi que le rapport pour comprendre les mécaniques du jeu et les actions possibles.

---

## Fonctionnalités
- **Interface graphique :** Utilisation de SDL2 pour afficher les cartes, les objets, et les boutons.
- **Communication réseau :** Gestion des échanges entre les joueurs via un serveur TCP.
- **Logique de jeu :** Implémentation des règles de Sherlock 13, y compris les questions, les réponses, et la déduction du coupable.

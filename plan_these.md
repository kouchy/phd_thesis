# Plan de thèse

<!-- ********************************************************************** -->
<!-- *********************************************************** CHAPITRE 1 -->
<!-- ********************************************************************** -->
## Introduction

<!-- ********************************************************************** -->
<!-- *********************************************************** CHAPITRE 2 -->
<!-- ********************************************************************** -->
## Parallélisme dans les "chaînes" de communication numériques (papier journal TPDS)

### Modèle Dataflow

#### Éléments de base

- tâches = les traitements (effectués sur des trames)
- modules = les données internes à une ou plusieurs tâches
- sockets = les données échangées entre les tâches
- séquence = un enchaînement de tâches dont l'ordre est défini par les
  connections entre les sockets

#### Règles

- une socket d'entrée ne peut être connectée qu'à une seule socket de sortie
- toutes les sockets d'entrée d'une tâche doivent être connectées pour qu'elle
  puisse s'exécuter
- une socket de sortie peut être connectée à aucune, une ou plus d'une socket
  d'entrée
- l'ordonnancement d'une séquence est implicitement défini par le binding, quand
  la dernière socket d'input d'une tâche est connectée, alors on va passer aux
  tâches suivante

#### Modules particuliers

- boucles : permet de répéter une sous-séquence
- routeurs : permet d'aiguiller vers différentes sous-séquences

### Vectorisation

- le temps d'exécution d'une tâche peut varier entre quelques microsecondes et
  quelques milliseconde -> faible latence -> adapté à la vectorisation
- expliquer les approches intra-trame et inter-trame pour faire du SIMD
- envoie vers le chapitre 3 pour plus de détails sur la vectorisation de tâches
  en particulier

### Multi-threading

#### Simulation

- description de la chaîne de simulation "typique" + BER/FER que l'on cherche à
  estimer
- stratégie Monte-Carlo
- génération de trames aléatoires (graines différentes sur les threads)
- modélisation d'un canal de communication qui bruitent les symboles (AWGN, BSC,
  BEC, Rayleigh, optique, ...)
- objectif : minimum de synchronisation entre les threads -> lazy
  synchronisation

#### SDR

- deux types de tâches différentes
  * les séquentielles : dépendance avec la trame précédente (mémoire interne)
  * les parallèles : aucune dépendance avec la trame précédente
- duplication de séquences
  * bon pour la localité des données (entre les tâches de la séquence)
  * améliore débit
  * ne change pas la latence
  * nécessite des tâches dîtes "parallèles"
  * la simulation exploite directement ce parallélisme
- pipeline entre les tâches
  * améliore le débit jusqu'à celui de la tâche ayant le plus petit débit
  * s'applique aux tâches parallèles et aux tâches séquentielles
  * ne change pas la latence
  * overhead de synchronisation entre les étages du pipeline
  * expliquer l'algo producteur/consommateur implémenté + 0-copie
- cadre applicatif : chaîne complète DVB-S2 parallélisé "automatiquement"

### Multi-nœud

#### Simulation

- stratégie Monte-Carlo
- objectif : minimum de synchronisation entre les nœuds -> collective tout les
  n secondes (n est définit par l'utilisateur)

<!-- ********************************************************************** -->
<!-- *********************************************************** CHAPITRE 3 -->
<!-- ********************************************************************** -->
## Optimisation d'algorithmes spécifiques

#### Papier workshop WPMVP

- vectorisation inter/intra-SIMD
- wrapper MIPP

### Codes polaires

#### Papier workshop LCPC

- décodeur SC
- polar API
- déroulage d'arbre
- élagage
- inter/intra-SIMD

#### Papier conférence EUSIPCO

- décodeur SC
- décodeurs générique (pas déroulé)
- inter/intra-SIMD
- consommation énergétique ARM/x86

#### Papier journal JSPS

- décodeur SC-List
- premier décodeur SC-List soft sur 8-bit
- décodeur générique
- élagage (benchmark SPC et REP node)
- gros débits et faible latence moyenne (état de l'art)
- intra-SIMD

### Turbo codes

#### Papier symposium ISTC

- décodeur Turbo LTE (3G/4G)
- inter-SIMD

#### Non publié

- décodeur inter- et intra-SIMD LTE à faible latence

<!-- ********************************************************************** -->
<!-- *********************************************************** CHAPITRE 4 -->
<!-- ********************************************************************** -->
## L'environnement AFF3CT (papier journal SoftwareX)

### Philosophie

- performance -> langage C++
- hétérogénéité d'algorithmes -> langage C++
- science reproductible -> projet sur GitHub, licence MIT

### Simulateur

- implémentation des concepts expliqués dans le chapitre 2
- valorisation des résultats de simulation (comparateur BER/FER)

### Bibliothèque

- implémentation des concepts expliqués dans le chapitre 2
- modèle dataflow
- outil graphique avec des boîtes, projet Romain
- wrapper MATLAB Kun

### Tests

<!-- ********************************************************************** -->
<!-- *********************************************************** CHAPITRE 5 -->
<!-- ********************************************************************** -->
## Conclusion

<!-- ********************************************************************** -->
<!-- *************************************************************** KESAKO -->
<!-- ********************************************************************** -->

## J'en parle ? Si oui où ?

### Code polaire mono/multi-kernel

- décodeurs SC, SCL, CA-SCL et ASCL (non systématique et systématique)
- factorisation automatique de kernels et génération du code source associé

### LDPC codes

#### Non publié

- décodeurs génériques (BP-flooding/HL/VL) sur les "update nodes"
- versions séquentielle et inter-SIMD

### Modem SCMA

#### Papier IEEE Access

- démodulateur SCMA intra-SIMD
- proposition d'une approximation des calculs
# Plan de thèse

<!-- ********************************************************************** -->
<!-- *********************************************************** CHAPITRE 1 -->
<!-- ********************************************************************** -->
## CHAPITRE 1 : Introduction (5/10 pages)

<!-- ********************************************************************** -->
<!-- *********************************************************** CHAPITRE 2 -->
<!-- ********************************************************************** -->
## CHAPITRE 2 : Contexte (5/10 pages)

<!-- ********************************************************************** -->
<!-- *********************************************************** CHAPITRE 3 -->
<!-- ********************************************************************** -->
## CHAPITRE 3 : Implémentations efficaces d'algorithmes de démodulation/décodage

### Vectorisation

- **état de l'art wrapper SIMD**
- le temps d'exécution d'une tâche peut varier entre quelques microsecondes et
  quelques milliseconde -> faible latence -> adapté à la vectorisation
- expliquer les approches intra-trame et inter-trame pour faire du SIMD
- envoie vers le chapitre 3 pour plus de détails sur la vectorisation de tâches
  en particulier

Cassagne, A.; Aumage, O.; Barthou, D.; Leroux, C. & Jégo, C.,
**MIPP: A Portable C++ SIMD Wrapper and its use for Error Correction Coding in 5G Standard**,
*Workshop on Programming Models for SIMD/Vector Processing (WPMVP)*, *ACM*, **2018**.

### Codage canal

#### Décodeurs polaires

- **état de l'art ([HoF polar](http://aff3ct.github.io/hof_polar.html))**
- décodeur SC
- décodeur SC-List
- polar API
- déroulage d'arbre
- décodeurs générique (pas déroulé)
- élagage
- inter/intra-SIMD
- consommation énergétique ARM/x86
- 32-bit, 16-bit, 8-bit

Cassagne, A.; Le Gal, B.; Leroux, C.; Aumage, O. & Barthou, D.,
**An Efficient, Portable and Generic Library for Successive Cancellation Decoding of Polar Codes**,
*International Workshop on Languages and Compilers for Parallel Computing (LCPC)*, *Springer*, **2015**.

Cassagne, A.; Aumage, O.; Leroux, C.; Barthou, D. & Le Gal, B.,
**Energy Consumption Analysis of Software Polar Decoders on Low Power Processors**,
*European Signal Processing Conference (EUSIPCO)*, *IEEE*, **2016**.

Léonardon, M.; Cassagne, A.; Leroux, C.; Jégo, C.; Hamelin, L.-P. & Savaria, Y.,
**Fast and Flexible Software Polar List Decoders**,
*Springer Journal of Signal Processing Systems (JSPS)*, **2019**.

- **état de l'art multi-kernel**
- factorisation automatique de kernels et génération du code source associé
- décodeurs multi-kernels génériques SC, SCL, CA-SCL et ASCL (non systématique et systématique)

#### Décodeurs turbo

- **état de l'art ([HoF turbo](http://aff3ct.github.io/hof_turbo.html))**
- décodeur Turbo LTE (3G/4G)
- inter-SIMD
- treillis
- décodeur inter- et intra-SIMD LTE à faible latence
- 32-bit, 16-bit, 8-bit

Cassagne, A.; Tonnellier, T.; Leroux, C.; Le Gal, B.; Aumage, O. & Barthou, D.,
**Beyond Gbps Turbo decoder on multi-core CPUs**,
*International Symposium on Turbo Codes and Iterative Information Processing (ISTC)*, *IEEE*, **2016**.

#### Décodeurs LDPC

- **état de l'art ([HoF LDPC](http://aff3ct.github.io/hof_ldpc.html))**
- décodeurs génériques (BP-flooding/HL/VL) sur les "update nodes"
- versions séquentielles et inter-SIMD
- 32-bit, 16-bit
- graphe biparti

### Modem

#### Démodulateur SCMA

- **état de l'art SCMA**
- démodulateur SCMA intra-SIMD
- proposition d'une approximation des calculs

Ghaffari, A.; Léonardon, M.; Cassagne, A.; Leroux, C. &; Savaria, Y.,
**Toward High Performance Implementation of 5G SCMA Algorithms**,
*IEEE Access*, **2019**.

<!-- ********************************************************************** -->
<!-- *********************************************************** CHAPITRE 4 -->
<!-- ********************************************************************** -->
## CHAPITRE 4 : langage dédié à la SDR

### Modèle Dataflow

- DF
- SDF
- CSDF

### Related works

- langages dédiés
- solutions ad hoc
- GNU Radio

### Runtime Embedded DSL

- tâches = les traitements (effectués sur des trames)
- modules = les données internes à une ou plusieurs tâches
- sockets = les données échangées entre les tâches
- boucles = permet de répéter une sous-séquence
- routeurs = permet d'aiguiller vers différentes sous-séquences
- séquence = un enchaînement de tâches dont l'ordre est défini par les
  connections entre les sockets
- pipeline

#### Règles

- une socket d'entrée ne peut être connectée qu'à une seule socket de sortie
- toutes les sockets d'entrée d'une tâche doivent être connectées pour qu'elle
  puisse s'exécuter
- une socket de sortie peut être connectée à aucune, une ou plus d'une socket
  d'entrée
- l'ordonnancement d'une séquence est implicitement défini par le binding, quand
  la dernière socket d'input d'une tâche est connectée, alors on va passer aux
  tâches suivantes

### Implémentation

- notion de processus (= wrapper de tâche)
- 0-copy adaptateurs
- clone

### Cadre applicatif : standard DVB-S2 pour un industriel

- émetteur
- récepteur

<!-- ********************************************************************** -->
<!-- *********************************************************** CHAPITRE 5 -->
<!-- ********************************************************************** -->
## CHAPITRE 5 : L'environnement AFF3CT

### Philosophie

- performance -> langage C++
- hétérogénéité d'algorithmes -> langage C++
- science reproductible -> projet sur GitHub, licence MIT

### Utilisations possibles

#### Simulateur

- documentation
- résultats de simulation, comparateur BER/FER (travaux de Mehdi)
- multi-noeuds

#### Bibliothèque

- pleins d'implem autre que les décodeurs
- outil graphique avec des boîtes, projet Romain
- wrapper MATLAB (travaux de Kun)

#### Prototypage

- hardware in the loop (travaux d'Olivier)

### CI/CD

- tests de compilation
- tests de régressions
- builds automatiques

### Communauté / Impact

- académiques
- industriels
- GitHub issues

Cassagne, A.; Léonardon, M.; Hartmann, O.; Tonnellier, T.; Delbergue, G.; Giraud, V.; Leroux, C.; Tajan, R.; Le Gal, B.; Jégo, C.; Aumage, O. & Barthou, D.,
**AFF3CT : Un environnement de simulation pour le codage de canal**,
*GdR SoC2*, **2017**.

Cassagne, A.; Hartmann, O.; Léonardon, M.; Tonnellier, T.; Delbergue, G.; Leroux, C.; Tajan, R.; Le Gal, B.; Jégo, C.; Aumage, O. & Barthou, D.,
**Fast Simulation and Prototyping with AFF3CT**,
*International Workshop on Signal Processing Systems (SiPS)*, *IEEE*, **2017** (demo night).

Cassagne, A.; Hartmann, O.; Léonardon, M.; He, K.; Leroux, C.; Tajan, R.; Aumage, O.; Barthou, D.; Tonnellier, T.; Pignoly, V.; Le Gal, B. & Jégo, C.,
**AFF3CT: A Fast Forward Error Correction Toolbox!**,
*Elsevier SoftwareX*, **2019**.

<!-- ********************************************************************** -->
<!-- *********************************************************** CHAPITRE 6 -->
<!-- ********************************************************************** -->
## CHAPITRE 6 : Conclusion

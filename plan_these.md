# Plan de thèse

## Introduction

## Différents niveaux de parallélisme dans les chaînes de communication

### Vectorisation

### Multi-threading

### Multi-nœud

## Optimisation d'algorithmes spécifiques

### Codes polaires

#### Papier workshop LCPC

- Décodeur SC
- Polar API
- Déroulage d'arbre
- Élagage
- Inter/intra-SIMD

#### Papier conférence EUSIPCO

- Décodeur SC
- Décodeurs générique (pas déroulé)
- Inter/intra-SIMD
- Consommation énergétique ARM/x86

#### Papier journal JSPS

- Décodeur SC-List
- Premier décodeur SC-List soft sur 8-bit
- Décodeur générique
- Élagage (benchmark SPC et REP node)
- Gros débits et faible latence moyenne (état de l'art)
- Intra-SIMD

### Turbo codes

#### Papier symposium ISTC

- Décodeur Turbo LTE (3G/4G)
- Inter-SIMD

#### Non publié

- Décodeur inter- et intra-SIMD LTE à faible latence

### LDPC codes ?

#### Non publié

- Décodeurs génériques (BP-flooding/HL/VL) sur les "update nodes"
- Versions séquentielle et inter-SIMD

### Modem SCMA ?

#### Papier IEEE Access

- Démodulateur SCMA intra-SIMD
- Proposition d'une approximation des calculs

## Le logiciel AFF3CT

## Conclusion






## J'en parle ? Si oui où ?

### Code polaire mono/multi-kernel

- décodeurs SC, SCL, CA-SCL et ASCL (non systématique et systématique)
- factorisation automatique de kernels et génération du code source associé

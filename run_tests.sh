#!/bin/bash

# Vérification que le script est exécuté dans le bon répertoire
if [ ! -f bin/console ]; then
  echo "Erreur : Veuillez exécuter le script à la racine du projet Symfony."
  exit 1
fi

echo "Démarrage des tests unitaires..."

# Exécution des tests PHPUnit
./bin/phpunit

# Vérifier si les tests ont réussi
if [ $? -eq 0 ]; then
    echo "Tous les tests unitaires ont réussi avec succès."
else
    echo "Des erreurs ont été détectées lors de l'exécution des tests."
    exit 1
fi

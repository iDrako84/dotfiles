#!/usr/bin/env bash

# 1. Definizione della stringa per il bottone di pulizia
BOTTONE_PULIZIA="🧹 Svuota la cronologia delle notifiche"

# 2. Gestione dell'azione al click (se l'utente seleziona qualcosa)
if [ -n "$1" ]; then
  if [ "$1" = "$BOTTONE_PULIZIA" ]; then
    # Se l'utente clicca sul bottone, pulisce la cronologia di dunst
    dunstctl history-clear
  fi
  exit 0
fi

# 3. Generazione della lista visualizzata in Rofi
# Mostra il bottone di pulizia in cima
echo "$BOTTONE_PULIZIA"

# Recupera e mostra la cronologia delle notifiche reali
dunstctl history | jq -r '.data[][] | "\(.summary.data): \(.body.data)"' | grep -v '^: $'

# Face Recognition Project

Questo repository contiene due versioni di un progetto che utilizza tecniche di elaborazione delle immagini e trasformata di Hough per rilevare linee e bordi su un'immagine.

## Versioni del progetto

### Versione 1: `CampusAndreaExam_second_version.m`
- Applicazione del filtro gaussiano per ridurre il rumore.
- Equalizzazione dell'immagine per migliorare il contrasto.
- Rilevamento dei bordi tramite l'algoritmo di Canny.
- Utilizzo della trasformata di Hough per individuare linee.
- Visualizzazione finale con le linee sovrapposte all'immagine originale.

### Versione 2: `CampusAndreaExam_without_filtering.m`
- Elaborazione dell'immagine in scala di grigi senza filtri aggiuntivi.
- Rilevamento dei bordi tramite l'algoritmo di Canny.
- Calcolo della trasformata di Hough per rilevare linee.
- Visualizzazione finale con le linee sovrapposte all'immagine originale.

## Requisiti

- MATLAB R2021b (o versioni successive)
- Immagine `Grammichele.jpg` (inclusa nella directory del progetto)

## Istruzioni per l'uso

1. Scaricare o clonare il repository Git:
   ```bash
   git clone https://github.com/tuo-username/face-recognition-project.git

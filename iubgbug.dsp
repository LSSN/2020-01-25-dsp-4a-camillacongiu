crea un file di faust in cui esponi, in forma di commento, i principi della sintesi sottrattiva.
//la sintesi sottrattiva è un modello di sintesi utilizzata nella musica elettronica dove una sorgente sonora viene filtrata da un punto di visa "spettrale", quindi sottraendo da essa le bande di frequenza. gli aspetti più importanti vengono evidenziati attraverso il processo dinamico, ovvero quando questa operazione di filtraggio si sviluppa durante l'evoluzione temporale del segnale.
il principio su cui si basa è un oscillatore che crea delle forme d'onda  e attraverso un filtro alcune componenti dell'onda vengono selezionate, le altre escluse.
// numeri che indentificano lo slider sono il valore iniziale, valore minimo, valore massimo e step incrementale.
//step incrementale è la precisione di passaggio da uno spettro all'altro
//il valore iniziale è il valore che deve assumere il controllo quando azioniamo il programma.
//il valore inziale può essere solo tra il valore minimo e il valore massimo.
//lo slider in faust può essere sia verticale sia orizzontale, per cambiarlo da verticale (vslider) orizzontale (oslider).
// il rumore è un suono che non ha ampiezza e non trasmette informazioni.
// lo spettroscopio ci mostra il contenuto del suono nel dominio della frequenza, sull'asse delle x le frequenze sull'asse delle y l'ampiezza. 
//l'oscilloscopio ci  mostra il contenuto del suono nel dominio del tempo. sull'asse delle x abbiamo il tempo e sull'asse delle y abbiamo le ampiezze. 
//lowpass: filtro che vuol dire "passa basso". è tra i più semplici. 
//dato un punto di taglio il filtro di primo ordine attenua 6 dB per ottava. 
//la velocità di un filtro è chiamata ordine.
//la frequenza di taglio si chiama "cut off"
import("stdfaust.lib");
gain = vslider("gain",0,0,1,0.1);
process = no.noise : fi.lowpass(8,6000) : fi.highpass(2,6000);

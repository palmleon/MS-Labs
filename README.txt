- Sia /vhdlsim che /syn sono suddivisi in cartelle, una per ogni esercizio (o sottoesercizio),
	 il cui nome rispetta lo standard definito dai professori
- Per copiare automaticamente i file .vhdl dal workspace (ossia /cap1/vhdlsim) basta eseguire
	 lo script copyToLocalRepo.sh, che ho inserito nel workspace (per eseguirlo, supponendo che il terminale sia puntato sul workspace:
	 prompt> sh copyToLocalRepo.sh). Lo script copia anche tutte le cartelle, cosicché ci sia sempre un matching 1:1 tra il contenuto del repo
	 e quello del workspace
- Per compilare rapidamente, propongo di utilizzare scripts. Ne ho scritto uno funzionante nella cartella ex3, potete copiarne la struttura adeguandola
	 ovviamente a quello che vi serve compilare. Per eseguire uno script di compilazione Modelsim: prompt> do path_script



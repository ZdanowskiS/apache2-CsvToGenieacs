mod_CsvtoGenieacs.la: mod_CsvtoGenieacs.slo
	$(SH_LINK) -rpath $(libexecdir) -module -avoid-version  mod_CsvtoGenieacs.lo
DISTCLEAN_TARGETS = modules.mk
shared =  mod_CsvtoGenieacs.la

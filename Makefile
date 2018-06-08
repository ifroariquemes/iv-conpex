DIR=$(sort $(dir $(wildcard artigos/*/)))
	
all:
	$(foreach dir, $(DIR), make -C $(dir);)
	$(foreach dir, $(DIR), $(RM) $(dir)*.aux $(dir)*.log $(dir)*.synctex $(dir)*.gz;)

install:
	@echo "Installation:"
	@mkdir -p ~/.vim/syntax
	@mkdir -p ~/.vim/ftdetect
	@mkdir -p ~/.vim/ftplugin
	@echo " * Dirs     ...    success."
	@cp ./syntax/Bravefile.vim 		~/.vim/syntax/	
	@echo " * Syntax   ...    success."
	@cp ./ftdetect/Bravefile.vim 		~/.vim/ftdetect/
	@echo " * Filetype ...    success."
	@cp ./ftplugin/Bravefile.vim 		~/.vim/ftplugin/
	@echo " * Plugin   ...    success."

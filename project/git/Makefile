all: config

config: 
	git config --global core.editor 'code --wait'
	@echo "Gitにユーザー名を設定してください"
	@read git_user_name  && git config --global user.name "$$git_user_name"
	@echo "Gitにメールアドレスを設定してください"
	@read git_user_email && git config --global user.email "$$git_user_email"

.PHONEY: all install update
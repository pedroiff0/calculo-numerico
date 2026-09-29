.PHONY: help install test docs lint clean

help: ## Exibe os comandos disponíveis
	@echo "Comandos disponíveis em Cálculo Numérico:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-18s\033[0m %s\n", $$1, $$2}'

install: ## Instala dependências do projeto em modo de desenvolvimento
	pip install -r codigos/requirements.txt -r docs/requirements.txt
	pip install -e .

test: ## Executa a suíte de testes com pytest
	pytest -q --maxfail=1

docs: ## Gera a documentação Sphinx em HTML
	mkdir -p docs/_static
	sphinx-build -b html docs docs/_build/html

lint: ## Executa verificação de sintaxe Python
	python3 -m py_compile codigos/**/*.py tests/**/*.py
	@echo "Verificação de sintaxe concluída."

clean: ## Limpa caches e builds temporários
	rm -rf build/ dist/ *.egg-info .pytest_cache docs/_build
	find . -type d -name "__pycache__" -exec rm -rf {} +

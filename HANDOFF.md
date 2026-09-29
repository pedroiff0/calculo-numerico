# HANDOFF — Cálculo Numérico

## 1. Contexto Rápido
- **Repositório:** `pedroiff0/calculo-numerico` (`~/Repositorios/academicos/calculo-numerico`).
- **Função Principal:** Pacote didático e biblioteca Python de métodos numéricos para engenharia e ciências exatas.
- **Estrutura:** Módulos em `codigos/`, testes em `tests/`, guias conceituais em `guia/`, documentação Sphinx em `docs/`.

## 2. Stack & Ferramentas
- **Linguagem:** Python 3.11+
- **Bibliotecas:** NumPy, SciPy, Matplotlib
- **Testes:** Pytest
- **Docs:** Sphinx com automação de documentação de testes em `docs/scripts/`

## 3. Estado Atual & Diretrizes Operacionais
- **Governança:** AGENTS.md, DESIGN.md, Makefile e templates do GitHub ativos.
- **Comandos Principais:**
  - `make install`: Instala dependências em modo editável (`pip install -e .`).
  - `make test`: Roda os testes com pytest.
  - `make docs`: Gera a documentação Sphinx em HTML.
  - `make lint`: Verifica formatação e erros comuns.
- **Próximos Passos:**
  - Continuar cobertura de testes para equações diferenciais ordinárias (Runge-Kutta).

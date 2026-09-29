# AGENTS.md — Cálculo Numérico

> Diretrizes e regras operacionais para Agentes de IA no repositório `calculo-numerico`.

---

## 1. Visão Geral
- **Repositório:** `pedroiff0/calculo-numerico` (`~/Repositorios/academicos/calculo-numerico`).
- **Propósito:** Biblioteca e materiais práticos de Métodos Numéricos em Python (zeros de funções, interpolação, ajuste de curvas, integração numérica, resolução de sistemas lineares e EDOs).
- **Stack:** Python 3.11+, NumPy, SciPy, Matplotlib, Sphinx (documentação) e Pytest.

---

## 2. Regras de Desenvolvimento para Agentes

1. **Implementações Numéricas:**
   - Todo algoritmo numérico implementado em `codigos/` deve conter testes unitários correspondentes em `tests/`.
   - Garantir tratamento para casos de não convergência (ex: divisão por zero, número máximo de iterações excedido).
2. **Documentação e Sphinx:**
   - Manter docstrings no formato Sphinx/NumPy.
   - O comando `make docs` gera a documentação em HTML.
3. **CI/CD:**
   - Workflows devem executar em no máximo 5 minutos (`timeout-minutes: 5`).

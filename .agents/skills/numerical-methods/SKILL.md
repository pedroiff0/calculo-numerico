---
name: numerical-methods
description: Diretrizes para implementar e testar métodos de cálculo numérico em Python.
---

# Numerical Methods Skill — Cálculo Numérico

Instruções para implementação de métodos:

1. **Assinatura Padrão de Algoritmos:**
   - Métodos iterativos devem aceitar: `tol` (tolerância, default `1e-6`), `max_iter` (máximo de iterações, default `100`).
   - Retorno padronizado em dicionário ou dataclass contendo: `raiz` (ou `solucao`), `iteracoes`, `convergido` (bool) e `historico_erros`.
2. **Testes Unitários:**
   - Todo algoritmo deve ter teste com função analítica conhecida e asserção de erro absoluto `abs(resultado - esperado) < tol`.

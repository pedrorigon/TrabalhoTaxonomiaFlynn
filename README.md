# TrabalhoTaxonomiaFlynn
Trabalho realizado para a disciplina de ARQ 2 UFRGS 2021/2

Como pode se observar, o primeiro código em assembly não utiliza instruções SIMD enquanto o segundo (otimizado) utiliza. Ou seja, com a tecnologia AVX o processador utiliza instruções vetoriais (SIMD) e com ela desativada não.
A exemplo disso, podemos citar a instrução VMOVAPS, que é uma instrução vetorial presente no segundo código (com AVX) mas não no primeiro.

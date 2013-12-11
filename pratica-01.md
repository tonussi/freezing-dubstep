__Lab__: Prática 1

__Nome__: Lucas Tonussi (CCO-INE-UFSC)

<div class="toc">
<ul>
<li><a href="#comandos-unix">Comandos Unix</a></li>
<li><a href="#semantica-e-sintaxe">Semântica e Sintaxe</a></li>
<li><a href="#os-arquivos-gram-scan-y">Os Arquivos gram, scan &amp; y</a></li>
</ul>
</div>

# Comandos Unix

```shell
#!/bin/sh

PATH = "/my/path"

ls -la
cat $PATH/some.txt
echo "string"
tail -10 $PATH/some.txt
head -10 $PATH/some.txt
more $PATH/some.txt
```

# Semântica e Sintaxe

As linguagens de programação são formadas por:

+ Componentes Léxicos
+ Regras de Sintaxe
+ Estruturas Semãnticas
+ `(Semântica) <- [Análise Léxica] -> (Sintaxe)`

```
Lexema--->(Tokenizador)--->(Tokens)++
	      \                     |
	       \                    |
		+--->(Lexer)+       (Analisador)
			     \      |
			      \     |
			       +--->(Sintaxe)+
					     |
					     (Parser)
					     |
					     (Semântica Conotativa)
					     |
					     (Compilador)
					     |
					     +--->(Semântica Denotativa)
```

# Os Arquivos gram, scan & y

1. (gram.y)  -> __Analisador Gramatical__
+  (scan.l)  -> __Analisador Léxico__
+  (y.tab.h) -> __Constantes e Operadores__


__Lexer__: Converte uma linguagem em uma lista de tokens.

__Parser__: Converte uma lista de tokens em um conjunto de termos não-terminais definidos para a linguagem.

__Parser-Generator__: Converte as definições em uma tabela que pode ser usada pelo parser (BNF).

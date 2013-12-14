__Lab__: Prática 10

__Nome__: Lucas Tonussi (CCO-INE-UFSC)

<div class="toc">
<ul>
<li><a href="#mais-listas">Mais Listas</a></li>
<li><a href="#exercicio-sobre-listas">Exercício sobre Listas</a></li>
<li><a href="#referencias">Referências</a></li>
</ul>
</div>

# Mais Listas

> Apenas um adendo ao que foi visto na aula 11 (sobre listas em haskell):

+ Listas em Haskell são homogêneas. [<a href="#referencias">1</a>]
+ Listas em Haskell são estruturas noduláres. [<a href="#referencias">1</a>]

```ruby
([77|*->][88|*->][99|*->][4|*->])
(head    :tail)
```
+ Que sempre tem um apontador para o próximo nó.
+ Até que esse último apontamento seja para um `null`.
+ Que quer dizer que a lista acabou.

# Exercício sobre Listas

Os resultados e programas estão contido em pratica-10. Fica mais
fácil entender o que está acontecendo nos resultados abaixo se
olhares o código e os testes unitários feito sobre o código que
está no diretório pratica-10.


```haskell
-- [1 of 1] Compiling Listas           ( Listas.hs, interpreted )
-- Ok, modules loaded: Listas.
-- *Listas> unittest

-- Haskel::MiniTest

-- Test :: Mapeamentos => (calculaSomaPA n razao)
--         Somas       => (mapeiaListaPA n razao)
--         Produtos    => (calculaProdPA n razao)

mapeiaListaPA 7  7 -- out => [7, 14, 21, 28, 35, 42, 49]
calculaSomaPA 7  7 -- out => 196
calculaProdPA 7  7 -- out => 4150656720

mapeiaListaPA 4  7 -- out => [7, 14, 21, 28]
calculaSomaPA 4  7 -- out => 70
calculaProdPA 4  7 -- out => 57624

mapeiaListaPA 3  6 -- out => [6, 12, 18]
calculaSomaPA 3  6 -- out => 36
calculaProdPA 3  6 -- out => 1296

mapeiaListaPA 3 12 -- out => [12, 24, 36]
calculaSomaPA 3 12 -- out => 72
calculaProdPA 3 12 -- out => 10368
```

# Referências

[1]:  Sá, C. Cesar. Silva, M. Ferreira; _"Haskell Uma Abordagem Prática"_; Disponível: Biblioteca Universitária; Acesso em: 13/12/13;

### Exercícios de Programação Orientada a Objetos

1. **Interface e Classe Carro**
   - Crie uma interface e uma classe chamada `Carro`.
   - Chame o método `exibirDados()`.

2. **Classe Pessoa**
   - Crie uma classe chamada `Pessoa` com os seguintes atributos:
     - Nome
     - Idade
     - Cidade
   - Crie um método chamado `exibirDados()`, onde serão exibidos os atributos da classe (nome, idade e cidade).
   - Crie um método chamado `verificarIdade()`. Se a idade for menor de 18, exiba a mensagem "menor de idade"; caso contrário, exiba "maior de idade".

3. **Interface Padrão**
   - Crie uma interface chamada `Padrao` com os seguintes atributos:
     - Nome
     - Idade
     - Cidade
     - E-mail
     - Telefone

4. **Classes Professor e Aluno**
   - Crie duas classes: `Professor` e `Aluno` que devem implementar a interface `Padrao`.
     - `Professor` deve ter os atributos:
       - Matéria
       - Classe
     - `Aluno` deve ter os atributos:
       - Nota1
       - Nota2

5. **Método `listar()`**
   - Implemente na classe `Padrao` um método chamado `listar()` onde serão exibidos os dados de `Aluno` e `Professor`.

6. **Métodos de Exibição**
   - Crie um método para exibir os dados do aluno. Se a média for 7 ou mais, exiba "aprovado"; caso contrário, exiba "reprovado".
   - Crie um método para exibir os dados do professor, incluindo a matéria e a classe.

7. **Função Genérica para Exibir Dados**
   - Crie uma função genérica para exibir os dados de `Professor` e/ou `Aluno`.

---

### Funções Genéricas

1. **Função de Retorno de Valores**
   - Escreva uma função genérica chamada `identity` que aceite um valor de qualquer tipo e retorne o mesmo valor.
   - **Exercício:** Teste a função com diferentes tipos de valores (número, string, array, objeto).

2. **Função de Filtro Genérica**
   - Crie uma função genérica chamada `filterArray` que receba um array de qualquer tipo e uma função de filtro como parâmetros. A função deve retornar um novo array contendo os elementos que passam no filtro.
   - **Exercício:** Utilize a função para filtrar um array de números, strings e objetos com diferentes condições.

3. **Função de Mesclagem de Objetos**
   - Implemente uma função genérica chamada `mergeObjects` que combine dois objetos de tipos genéricos diferentes em um único objeto.
   - **Exercício:** Teste a função mesclando objetos de diferentes tipos (por exemplo, um objeto de configurações e um objeto de estado).

4. **Função de Conversão de Tupla em Array**
   - Crie uma função genérica chamada `tupleToArray` que aceite uma tupla de qualquer tamanho e tipo, e retorne um array contendo os mesmos elementos.
   - **Exercício:** Teste a função com tuplas de diferentes tipos e tamanhos (por exemplo, `[string, number]`, `[boolean, number, string]`).

5. **Função de Busca por Chave em Objeto**
   - Escreva uma função genérica chamada `getValueByKey` que receba um objeto e uma chave como parâmetros, e retorne o valor associado a essa chave. A função deve garantir que a chave existe no objeto.
   - **Exercício:** Teste a função com diferentes objetos e chaves, garantindo que a chave está presente no objeto.

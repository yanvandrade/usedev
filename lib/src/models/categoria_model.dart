class Categoria {
  final String nome;
  final String imagem;

  Categoria({required this.nome, required this.imagem});
}

final List<Categoria> categorias = [
  Categoria(nome: 'Roupas', imagem: 'assets/Roupas.png'),
  Categoria(nome: 'Decoração', imagem: 'assets/Decoracao.png'),
  Categoria(nome: 'Canecas', imagem: 'assets/Canecas.png'),
  Categoria(nome: 'Acessórios', imagem: 'assets/Acessorios.png'),
];

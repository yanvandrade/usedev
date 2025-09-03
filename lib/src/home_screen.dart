import 'package:flutter/material.dart';
import 'models/categoria_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Color(0xFF090129)),
        ),
        title: Image.asset('assets/logo.png', height: 40),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_2_outlined, color: Color(0xFF090129)),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined, color: Color(0xFF090129)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                style: const TextStyle(color: Color(0xFF090129)),
                decoration: const InputDecoration(
                  hintText: 'O que você procura?',
                  hintStyle: TextStyle(color: Color(0xFF090129)),
                  filled: true,
                  fillColor: Color(0xFFF2F2F2),
                  prefixIcon: Icon(Icons.search, color: Color(0xFF090129)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Image.asset(
              'assets/Banner.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 24),
            const Center(
              child: Text(
                'Categorias',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF090129),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 6),
              child: Text(
                'De roupas a gadgets tecnológicos, temos tudo para atender suas paixões e hobbies com estilo e diversão.',
                style: TextStyle(
                  color: Color(0xFF0B254B),
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // ListView.builder otimizado
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(), // evita scroll duplo
              shrinkWrap: true, // adapta altura ao conteúdo
              itemCount: categorias.length,
              itemBuilder: (context, index) {
                final categoria = categorias[index];
                return InkWell(
                  onTap: () {
                    Feedback.forTap(context);
                    print('Categoria clicada: ${categoria.nome}');
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.20),
                          blurRadius: 15, // reduzido para performance
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset(
                          categoria.imagem,
                          width: double.infinity,
                          height: 290,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            categoria.nome,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF090129),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

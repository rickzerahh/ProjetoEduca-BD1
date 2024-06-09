const service = require('../services/service');

module.exports = {
    buscarTodos: async (req, res) => {
        let json = { error: '', result: [] };

        let livros = await service.buscarTodos();

        for (let i in livros) {
            json.result.push({
                ISBN: livros[i].ISBN,
                Titulo_livro: livros[i].Titulo_livro
            });
        }
        res.json(json);
    },

    buscarUm: async (req, res) => {
        let json = { error: '', result: {} };

        let ISBN = req.params.ISBN;
        let livro = await service.buscarUm(ISBN);

        if (livro) {
            json.result = livro;
        }
        res.json(json);
    },

    inserir: async (req, res) => {
        let json = { error: '', result: {} };

        let Nome_disciplina = req.body.Nome_disciplina;

        if (Nome_disciplina) {
            let disciplinaCodigo = await service.inserir(Nome_disciplina);
            json.result = {
             Codigo: disciplinaCodigo,
             Nome_disciplina
            };
        } else {
            json.error = 'Campos não enviados';
        }
        res.json(json);
    },
    alterar: async (req, res) => {
        let json = { error: '', result: {} };

        let Matricula_aluno = req.params.Matricula_aluno;
        let Nome_aluno = req.body.Nome_aluno;
        let Sobrenome_aluno = req.body.Sobrenome_aluno;
        let Email_aluno = req.body.Email_aluno;

        if (Matricula_aluno && Nome_aluno && Sobrenome_aluno && Email_aluno) {
             await service.inserir(Matricula_aluno, Nome_aluno, Sobrenome_aluno, Email_aluno);
            json.result = {
              Matricula_aluno,
              Nome_aluno,
              Sobrenome_aluno,
              Email_aluno
            };
        } else {
            json.error = 'Campos não enviados';
        }
        res.json(json);
    },

    excluir: async(req,res) => {
        let json = { error: '', result: {} };

        await service.excluir(req.params.ID_professor);

        res.json(json);
    }
    
};

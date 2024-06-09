 
const db = require('../db');

module.exports = {
    buscarTodos: ()=> {
        return new Promise((aceito, rejeitado)=> {
            db.query('SELECT * FROM livros', (error, results)=> {
                if(error) {rejeitado(error);return;}
                aceito(results);
            });
        });
    },

    buscarUm: (ISBN)=> {
        return new Promise((aceito,rejeitado)=>{
            db.query('SELECT * FROM livros WHERE ISBN = ?', [ISBN], (error, results)=>{
                if(error) {rejeitado(error);return;}
                if(results.length > 0) {
                    aceito(results[0]);
                } else {
                    aceito(false);
                }
            });
        });
    },
    
inserir: ( Nome_disciplina)=> {
    return new Promise((aceito,rejeitado)=>{
        db.query('INSERT INTO Disciplina (Nome_disciplina) VALUES (?)' , [Nome_disciplina], (error, results)=>{
            if(error) {rejeitado(error);return;}
            aceito(results.insertCodigo);
            
            
        });
    });
},
alterar: (Matricula_aluno, Nome_aluno, Sobrenome_aluno, Email_aluno)=> {
    return new Promise((aceito,rejeitado)=>{
        db.query('UPDATE aluno SET Nome_aluno = ?, Sobrenome_aluno = ?, Email_aluno = ? WHERE Matricula_aluno = ? ', 
            [Nome_aluno,Sobrenome_aluno,Email_aluno, Matricula_aluno], (error, results)=>{
            if(error) {rejeitado(error);return;}
            aceito(results);
            
            
        });
    });
},

excluir: (ID_professor)=> {
    return new Promise((aceito, rejeitado)=> {
        db.query('DELETE FROM Professor WHERE ID_professor = ?',[ID_professor], (error, results)=> {
            if(error) {rejeitado(error);return;}
            aceito(results);
        });
    });
}

};
 
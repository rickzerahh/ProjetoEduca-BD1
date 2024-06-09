const express = require('express');
const router = express.Router();

const controller = require('./controllers/controller');

router.get('/livros', controller.buscarTodos);
router.get('/livro/:ISBN', controller.buscarUm);
router.post('/disciplina', controller.inserir);
router.put('/aluno/:Matricula_aluno', controller.alterar);
router.delete('/professor/:ID_professor',controller.excluir);

module.exports = router;
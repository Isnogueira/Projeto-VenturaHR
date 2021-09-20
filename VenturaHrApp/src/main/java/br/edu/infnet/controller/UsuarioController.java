package br.edu.infnet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.model.domain.Usuario;
import br.edu.infnet.service.UsuarioService;

@Controller
public class UsuarioController {

	@Autowired
	private UsuarioService usuarioService;

	@GetMapping(value = "/registro")
	public String telaRegistro() {
		return "/usuario/registro";
	}

	@PostMapping(value = "/registro")
	public String registrar(Model model, Usuario usuario) {

		String msg1 = null;

		String msg2 = null;

		String resposta = "/usuario/registro";

		if (usuario.getEmail().isBlank()) {

			msg1 = "O campo email está em branco.";

			model.addAttribute("mensagemEmail", msg1);

			return resposta;
		}
		if (usuario.getSenha().isBlank()) {

			msg1 = "O campo senha está em branco.";

			model.addAttribute("mensagemSenha", msg1);

			return resposta;
		}
		if (usuario.getTelefone() == 0) {

			msg1 = "O campo Telefone está em branco.";

			model.addAttribute("mensagemTelefone", msg1);

			return resposta;
		}
		if (usuario.getTipo() == 'C' && usuario.getNome().isBlank()) {

			msg1 = "O campo Nome é obrigatório.";

			model.addAttribute("mensagemNome", msg1);

			return resposta;
		}
		if (usuario.getTipo() == 'C' && usuario.getCpf().isBlank()) {

			msg1 = "O campo CPF é obrigatório.";

			model.addAttribute("mensagemCpf", msg1);

			return resposta;

		}

		if (usuario.getTipo() == 'C' && usuario.getNome().isBlank() && usuario.getCpf().isBlank()) {

			msg1 = "O campo Nome é obrigatório.";
			msg2 = "O campo Cpf é obrigatório.";

			model.addAttribute("mensagemNome", msg1);
			model.addAttribute("mensagemCpf", msg2);

			return resposta;

		}

		if (usuario.getTipo() == 'E' && usuario.getRazaoSocial().isBlank()) {

			msg1 = "O campo Razão Social é obrigatório.";

			model.addAttribute("mensagemRazaoSocial", msg1);

			return resposta;

		}

		if (usuario.getTipo() == 'E' && usuario.getCnpj().isBlank()) {

			msg1 = "O campo CNPJ é obrigatório.";

			model.addAttribute("mensagemCnpj", msg1);

			return resposta;
		}

		if (usuario.getTipo() == 'E' && usuario.getRazaoSocial().isBlank() && usuario.getCnpj().isBlank()) {

			msg1 = "O campo Razão Social é obrigatório.";
			msg2 = "O campo CNPJ é obrigatório.";

			model.addAttribute("mensagemRazaoSocial", msg1);
			model.addAttribute("mensagemCnpj", msg2);

			return resposta;

		}
	
		usuarioService.criarConta(usuario);

		return "/index";
	}

}

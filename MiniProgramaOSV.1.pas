Program MeuMiniProgramaSimulado;
uses crt;
var
	senha: string;
	num, num2, opcoes, opcoes2, numcorreto, numEsc, tentativas, senhaerrada: integer;
	
	//Crio uma função ja definida para a calculadora.
	
	function Calculadora(num,num2,opcoes:integer): real;
	Begin
		case (opcoes) of
			1:Calculadora:= num + num2;
			2:Calculadora:= num / num2;
			3:Calculadora:= num - num2;
			4:Calculadora:= num * num2;
			5:Calculadora:= sqrt(num);
		end;
	End;				

Begin
	
	//Defino número tolerável para senhas erradas em 5 (definindo 0 no começo para ser contado no verificador), se o número de senhas erradas forem iguais a 5, a tentativa de loguin falha.
	//Defino número de tentativas em 0 (Jogo de advinhar números), para que seja contado e exibido ao final do jogo. 
	
	tentativas:=0;
	senhaerrada:=0;
	
	writeln('Seja Bem-Vindo PH!');
 		delay(233);
 	
	//Minha Seção de Login
	
	repeat 		
		writeln('Por favor insira sua senha!');
			readln(senha);
		
			//Verificação de senhas	
		
		if (senha <> 'Phworks2025') then
			begin			
				senhaerrada:=senhaerrada + 1; 
				writeln('Senha incorreta.');
		
			//Verifica se o número de senhas erradas "5" é real.
			
		if (senhaerrada = 5) then			
			begin	
				writeln('Tentativas demais ao acessar o programa, tente novamente mais tarde!');
				writeln('Encerrando programa..........');
				delay(1300);

				Exit; 			
			end;		
		end;	
	
	  //Fim do loop de repetição para verificar senhas.
		
	until(senha = 'Phworks2025');

	writeln('Você logou!');
	delay(430);
	
	//Loop Principal do Menu
	repeat 
	
	clrscr;  //Adiciono um "clrscr" para limpar a tela a cada vez que escolhem oque quer fazer no sistema.
		
		writeln; 
		writeln('O que irá fazer hoje?');
		writeln('Digite 1 para abrir sua calculadora');
		writeln('Digite 2 para abrir jogo do número secreto');
		writeln('Digite 0 para fechar o programa e dar LogOff');
		readln(opcoes2); 
		
		//Crio um Switch Case para cada opção que o usúario escolher 
		
		case (opcoes2) of
			
		//Calculadora
			
			1:	begin	
						
						clrscr;
						
						writeln('Bem-Vindo à calculadora! digite dois números e escolha o que fazer com eles');
						writeln('Informe o primeiro número');
						readln(num);
					
						writeln('Informe o segundo número');
						readln(num2);
	
						writeln('O que você quer fazer?');
						delay(605);
					
						writeln('1: Adição');
						writeln('2: Divisão');
						writeln('3: Subtração');
						writeln('4: Multiplicação');
						writeln('5: Raíz quadrada do primeiro número');
						readln(opcoes);
					
						writeln('Os resultados são: ' , Calculadora(num,num2,opcoes):0:2 );
						delay(2000); 
					end;
				
			2:	begin
			
			      //Game simples de advinhar números
						
						clrscr;
						writeln('Boas Vindas, PH!');
						writeln('Carregando seu jogo...');
						delay(234);
						writeln('Carregando....24%');
						delay(342);
						writeln('Carregando....49%');
						delay(432);
						writeln('Carregando....78%');
						delay(123);
						writeln('Carregando....100%');
						delay(1234);
						writeln('O jogo foi carregado com sucesso! iniciando.');
					
						writeln('Adivinhe o número e ao final irá exibir suas tentativas!');
						writeln('Boa sorte!');
					
						//Adiciono um número aleatorio para ser advinhado	
				
						numcorreto:= random(100) + 1; 
						tentativas:= 0; 
					
						repeat
							writeln('Digite o número que você acha que é o correto:');
								readln(numEsc);
						
							if (numEsc > numcorreto) then
								begin
								writeln('O número é menor!');
								tentativas:=tentativas + 1;
							end
						
							else if (numEsc < numcorreto) then
								begin
								writeln('O número correto é maior');
								tentativas:=tentativas + 1;
							end
						
							else 
								begin
									writeln('Parabéns!!! Você acertou o número correto!');
									writeln('Suas tentativas: ' , tentativas );
							end;
						
							//O programa termina quando o usúario finalmente acerta o número.
						
						until(numEsc = numcorreto);
						delay(2000); 
					
					end;
				
		    	//Sistema de encerramento do programa caso o usúario digite 0.
				
			0:	begin
						writeln('Você decidiu sair para LogOff...');
						writeln('Encerrando o programa...');
						delay(1432);			
					end;
			
				//Abaixo, sistema para exibir mensagem de opções inválidas e loop para continuar o programa.
			
			else 
				begin
					writeln('Opção inválida! Por favor, digite 1, 2 ou 0.');
					delay(1000);
				end;
		  end;
	
	until(opcoes2 = 0);
	
			//Por favor se você for usar este programa peço humildemente que deixe os creditos: ©PhzinneZr2025
	
End.
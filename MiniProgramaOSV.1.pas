Program MeuMiniProgramaSimulado;
uses crt;
var
	senha: string;
	num, num2, opcoes, opcoes2, numcorreto, numEsc, tentativas, senhaerrada: integer;
	
	//Crio uma fun��o ja definida para a calculadora.
	
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
	
	//Defino n�mero toler�vel para senhas erradas em 5 (definindo 0 no come�o para ser contado no verificador), se o n�mero de senhas erradas forem iguais a 5, a tentativa de loguin falha.
	//Defino n�mero de tentativas em 0 (Jogo de advinhar n�meros), para que seja contado e exibido ao final do jogo. 
	
	tentativas:=0;
	senhaerrada:=0;
	
	writeln('Seja Bem-Vindo PH!');
 		delay(233);
 	
	//Minha Se��o de Login
	
	repeat 		
		writeln('Por favor insira sua senha!');
			readln(senha);
		
			//Verifica��o de senhas	
		
		if (senha <> 'Phworks2025') then
			begin			
				senhaerrada:=senhaerrada + 1; 
				writeln('Senha incorreta.');
		
			//Verifica se o n�mero de senhas erradas "5" � real.
			
		if (senhaerrada = 5) then			
			begin	
				writeln('Tentativas demais ao acessar o programa, tente novamente mais tarde!');
				writeln('Encerrando programa..........');
				delay(1300);

				Exit; 			
			end;		
		end;	
	
	  //Fim do loop de repeti��o para verificar senhas.
		
	until(senha = 'Phworks2025');

	writeln('Voc� logou!');
	delay(430);
	
	//Loop Principal do Menu
	repeat 
	
	clrscr;  //Adiciono um "clrscr" para limpar a tela a cada vez que escolhem oque quer fazer no sistema.
		
		writeln; 
		writeln('O que ir� fazer hoje?');
		writeln('Digite 1 para abrir sua calculadora');
		writeln('Digite 2 para abrir jogo do n�mero secreto');
		writeln('Digite 0 para fechar o programa e dar LogOff');
		readln(opcoes2); 
		
		//Crio um Switch Case para cada op��o que o us�ario escolher 
		
		case (opcoes2) of
			
		//Calculadora
			
			1:	begin	
						
						clrscr;
						
						writeln('Bem-Vindo � calculadora! digite dois n�meros e escolha o que fazer com eles');
						writeln('Informe o primeiro n�mero');
						readln(num);
					
						writeln('Informe o segundo n�mero');
						readln(num2);
	
						writeln('O que voc� quer fazer?');
						delay(605);
					
						writeln('1: Adi��o');
						writeln('2: Divis�o');
						writeln('3: Subtra��o');
						writeln('4: Multiplica��o');
						writeln('5: Ra�z quadrada do primeiro n�mero');
						readln(opcoes);
					
						writeln('Os resultados s�o: ' , Calculadora(num,num2,opcoes):0:2 );
						delay(2000); 
					end;
				
			2:	begin
			
			      //Game simples de advinhar n�meros
						
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
					
						writeln('Adivinhe o n�mero e ao final ir� exibir suas tentativas!');
						writeln('Boa sorte!');
					
						//Adiciono um n�mero aleatorio para ser advinhado	
				
						numcorreto:= random(100) + 1; 
						tentativas:= 0; 
					
						repeat
							writeln('Digite o n�mero que voc� acha que � o correto:');
								readln(numEsc);
						
							if (numEsc > numcorreto) then
								begin
								writeln('O n�mero � menor!');
								tentativas:=tentativas + 1;
							end
						
							else if (numEsc < numcorreto) then
								begin
								writeln('O n�mero correto � maior');
								tentativas:=tentativas + 1;
							end
						
							else 
								begin
									writeln('Parab�ns!!! Voc� acertou o n�mero correto!');
									writeln('Suas tentativas: ' , tentativas );
							end;
						
							//O programa termina quando o us�ario finalmente acerta o n�mero.
						
						until(numEsc = numcorreto);
						delay(2000); 
					
					end;
				
		    	//Sistema de encerramento do programa caso o us�ario digite 0.
				
			0:	begin
						writeln('Voc� decidiu sair para LogOff...');
						writeln('Encerrando o programa...');
						delay(1432);			
					end;
			
				//Abaixo, sistema para exibir mensagem de op��es inv�lidas e loop para continuar o programa.
			
			else 
				begin
					writeln('Op��o inv�lida! Por favor, digite 1, 2 ou 0.');
					delay(1000);
				end;
		  end;
	
	until(opcoes2 = 0);
	
			//Por favor se voc� for usar este programa pe�o humildemente que deixe os creditos: �PhzinneZr2025
	
End.
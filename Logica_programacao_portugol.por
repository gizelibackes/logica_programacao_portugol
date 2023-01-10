programa 
{
  inclua biblioteca Matematica --> mat

	funcao inicio() 
	
    inteiro exer

    faca
    { 
      escreva ("\n--------------------------------------------------\n")   
      escreva ("Informe - 1 a 17 -  exercicio que deseja executar. \n")
      escreva ("Ou, informe 0 para sair! \n")
      escreva ("--------------------------------------------------\n")
      escreva ("Exercicio: ")
      leia (exer)
      escreva ("--------------------------------------------------\n")
      escreva ("\n")
        

      escolha (exer)
      {
        caso 1:
          exercicio1()
        pare
        caso 2:
          exercicio2()
        pare
        caso 3:
           exercicio3()
        pare
        caso 4:
          exercicio4()
        pare
        caso 5:
          exercicio5()
        pare
        caso 6:
          exercicio6()
        pare
        caso 7:
          exercicio7()
        pare
        caso 8:
           exercicio8()
        pare
        caso 9:
          exercicio9()
        pare
        caso 10:
          exercicio10()
        pare
        caso 11:
          exercicio11()
        pare
        caso 12:
          exercicio12()
        pare
        caso 13:
          exercicio13()
        pare
        caso 14:
          exercicio14()
        pare
        caso 15:
          exercicio15()
        pare
        caso 16:
          exercicio16()
        pare
        caso 17:
          exercicio17()
        pare
      }
    }
    enquanto (exer != 0)
    escreva ("OBRIGADA! \n")
    escreva ("Aluna: Gezeli Backes \n")
  }


	funcao exercicio1() 
	{
    inteiro vetor[6]

    escreva ("---------------------------------------------------------------------------------------------------------\n")   
    escreva ("Criar um algoritmo que entre com cinco números e imprimir o quadrado de cada número (usar estrutura para).\n")
    escreva ("----------------------------------------------------------------------------------------------------------\n \n")

		para (inteiro posicao = 1; posicao < 6; posicao++)
		{
      escreva ("Informe o ", posicao, " numero: ")
			leia (vetor[posicao])
		}

    escreva ("\n")  

		escreva ("Vetor na ordem original:\n")
		
		para(inteiro posicao = 1; posicao < 6; posicao++)
		{
			se (posicao!=5)
      {
        escreva (vetor[posicao], ", ")
      }
      senao
      {
        escreva (vetor[posicao], ".")
      }
      
		}
		
		escreva ("\n\nQuadrado dos numeros:\n")
		
		para(inteiro posicao = 1; posicao < 6; posicao++)
		{
			se(posicao!=5)
      {
        escreva ((vetor[posicao]*vetor[posicao]), ", ")
      }
      senao
      {
        escreva ((vetor[posicao]*vetor[posicao]), ".")
      }
		}
    escreva ("\n")
		
	}
	

  funcao exercicio2() 
	{
    inteiro polegadas[21]
    inteiro centimentros[21]

    escreva ("----------------------------------------------------------------------------------------\n")   
    escreva ("Criar um algoritmo que imprima uma tabela de conversão de polegadas para centímetros.\n")
    escreva ("Considera a tabela com os valores de 1 polegada até 20 polegadas (usar valores inteiros).\n")
    escreva ("----------------------------------------------------------------------------------------\n \n")
		escreva ("------------------------------\n")
		escreva ("       TABELA CONVERSÃO       \n")
		escreva ("------------------------------\n")
    escreva ("POLEGADAS\t\t\t\t\tCENTIMETROS    \n")

    para (inteiro posicao =1; posicao <= 20; posicao++)
		{
			polegadas[posicao] = posicao
      centimentros[posicao] = posicao*2.54
		}

		para (inteiro posicao = 1; posicao <= 20; posicao++)
		{
			// O caracter especial \t serve para escrever uma tabulação
			escreva (polegadas[posicao], "\t\t\t\t\t\t\t\t\t", centimentros[posicao], "\n")
		}
    escreva ("\n")
	}


  funcao exercicio3()
  {
		inteiro passo=0
		real lim_inf=0, lim_sup=0, celsius=0, fahr=0

	  escreva("Informe o limite inferior em graus celsius: \n")
	  leia(lim_inf)

    escreva("Informe o limite superior graus celsius: \n")
    leia(lim_sup)

	  se (lim_inf>lim_sup)
    {
	    faca
      {
	    	escreva("\n***************** INTEVALO INVALIDO ******************** \n")
        escreva("Limite inferior precisa ser menor que o limite superior! \n\n")
	    	
	      escreva("Informe o limite inferior graus celsius: \n")
	      leia(lim_inf)

        escreva("Informe o limite superior graus celsius: \n")
        leia(lim_sup)
	    }
	    enquanto(lim_inf>lim_sup)
	  }
	  
    escreva("\nInforme o passo: ")
	  leia(passo)
    escreva ("\n")

    escreva ("------------------------------\n")
		escreva ("       TABELA CONVERSÃO       \n")
		escreva ("------------------------------\n")
    escreva ("Celsius\t\t\t\t\tFahrenheit   \n")
	  
    para (celsius = lim_inf; celsius <= lim_sup; celsius = celsius+passo)
    {
      fahr = ((5*(celsius-32))/9)
      escreva (celsius,"\t\t\t\t\t\t", mat.arredondar(fahr,2), "\n")
	  }
		
  }


  funcao exercicio4()
  {
  // vetores inicializados com 3 posicoes para facilitar o teste
   cadeia nome[3]
   caracter sexo[3]
   inteiro idade[3]

    escreva ("--------------------------------------------------------------------------\n")   
    escreva ("Entrar com o nome, idade e sexo de 20 pessoas.\n")
    escreva ("CImprimir o nome se a pessoa for do sexo feminino e tiver mais de 21 anos.\n")
    escreva ("--------------------------------------------------------------------------\n")

    para (inteiro posicao =1; posicao < 3; posicao++)
		{
			escreva ("\nInforme nome, idade e sexo da ", posicao, " pessoa:\n")
      leia(nome[posicao])

      faca
      {
        leia(idade[posicao])
        se ((idade[posicao]<0) ou (idade[posicao]>105)
        {
          escreva ("\nIdade invalida:\n")
          escreva ("Informe a idade da ", posicao, " pessoa:\n")
        }
      }
      enquanto ((idade[posicao]<0) ou (idade[posicao]>105))
     

      faca
      {
        leia(sexo[posicao])
        se ((sexo[posicao] != "F") e (sexo[posicao] != "M")
        {
          escreva ("\nInformacao invalida:\n")
          escreva ("Informe o sexo da ", posicao, " pessoa:\n")
        }
      }
      enquanto ((sexo[posicao] != "F") e (sexo[posicao] != "M"))
		}

    para (inteiro posicao = 1; posicao < 3; posicao++)
		{
        se ((idade[posicao] >=21) e (sexo[posicao] == "F"))
        {
          escreva ("\n")
          escreva ("----------------------------\n")
          escreva ("Mulheres maiores de 21 anos:\n")
          escreva ("----------------------------\n\n")
          escreva (nome[posicao], "\n")
          escreva (idade[posicao], "\n")
          escreva (sexo[posicao], "\n")
          escreva ("\n")
        }
		}
    escreva ("\n") 
		
  }


  funcao exercicio5()
  {
    inteiro incr=0, lim_sup=0, i=0

    escreva ("-------------------------------------------------------------------------------------------------------\n")   
    escreva ("Criar um algoritmo que leia um número que será o limite superior de um intervalo e o incremento (incr).\n")
    escreva ("Imprimir todos os números naturais no intervalo de zero (0) até esse número. \n")
    escreva ("Valide que o limite superior seja maior que zero. \n")
    escreva ("Exemplo: \n")
    escreva ("Limite superior: 20 \n")
    escreva ("Incremento: 3 \n")
    escreva ("Saída: 0 3 6 9 12 15 18 \n")
    escreva ("--------------------------------------------------------------------------------------------------------\n")
    escreva ("\n")

    faca
    {
    escreva("Informe o limite superior: \n")
    leia(lim_sup)
      se (lim_sup < 0)
      {
        escreva ("Informe limite superior maior que 0 (zero): \n")
        leia(lim_sup)
      }
    }
    enquanto (lim_sup <0)

    faca
    {
     escreva("Informe o intervalo: \n")
     leia(incr)
     se (incr < 0)
      {
        escreva ("Informe intervalo maior que 0 (zero): \n")
        leia(incr)
      }
    }
    enquanto (incr < 0)

    escreva ("\n")
    escreva ("------------------------------\n")
		escreva ("   NATURAIS NO INTERVALO      \n")
    escreva ("------------------------------\n")

    para (i = 0; i <= lim_sup; i=i+incr)
    {
      escreva (i, "\n")
	  }

    escreva ("------------------------------\n")
		escreva ("           OBRIGADA           \n")
    escreva ("------------------------------\n")		
  }


  funcao exercicio6()
  {
    inteiro t1=1, t2=1, t3=0, quant=0, i=0

    escreva ("----------------------------------------------------------------------------------------\n")   
    escreva ("Criar um algoritmo que imprima a quantidade de termos solicitados da série de Fibonacci.\n")
    escreva ("Observação: os dois primeiros termos desta série são 1 e 1 e os demais são gerados a \n")
    escreva ("partir da soma os anteriores. \n")
    escreva ("Exemplo: \n")
    escreva ("1 + 1 -> 2 (terceiro termo) \n")
    escreva ("1 + 2 -> 3 (quarto termo) \n")
    escreva ("2 + 3 -> 5 (quinto termo) \n")
    escreva ("----------------------------------------------------------------------------------------\n")
    escreva ("\n") 

    faca
    {
    escreva("Informe a quantidade de termos: \n")
    leia(quant)
      se (quant < 0)
      {
        escreva ("Informe quantidade maior que 0 (zero): \n")
        leia(quant)
        
      }
    }
    enquanto (quant <0)

    escreva ("\n") 
    escreva ("---------------------\n")   
    escreva (" SEQUENCIA FIBONACCI \n")
    escreva ("---------------------\n")  
    escreva ("\n") 

		para (i = 0; i <= quant; i++)
    {
			t3 = t1 + t2
			t1 = t2
			t2 = t3

      se (i==quant)
      {
        escreva(t3, ". ")
      }
      senao
      {
        escreva(t3, ", ")
      }

    }
    escreva ("\n") 
		
  }


  funcao exercicio7()
  {
    inteiro t1=0, t2=0, t3=0, quant=0, i=0

    escreva ("----------------------------------------------------------------------------------------\n")   
    escreva ("A série de RICCI difere da série de FIBONACCI porque os dois primeiros termos são \n")
    escreva ("fornecidos pelo usuário. Os demais termos são gerados da mesma forma que a série de \n")
    escreva ("FIBONACCI. Criar um algoritmo que imprima os n primeiros termos da série de RICCI e a \n")
    escreva ("soma dos termos impressos, sabendo-se que para existir esta série serão necessários pelo \n")
    escreva ("menos três termos. (Validar que os termos sejam positivos) \n")
    escreva ("----------------------------------------------------------------------------------------\n")
    escreva ("\n")   

    faca
    {
    escreva("Informe o primeiro termo: ")
    leia(t1)
      se (t1 < 0)
      {
        escreva ("Informe termo maior que 0 (zero): ")
        leia(t1)
        
      }
    }
    enquanto (t1 <0)

    faca
    {
    escreva("Informe o segundo termo: ")
    leia(t2)
      se (t2 < 0)
      {
        escreva ("Informe termo maior que 0 (zero): ")
        leia(t2)
        
      }
    }
    enquanto (t2 <0)
    
    faca
    {
    escreva("Informe a quantidade de termos: ")
    leia(quant)
      se (quant < 0)
      {
        escreva ("Informe quantidade maior que 0 (zero): ")
        leia(quant)
        
      }
    }
    enquanto (quant <0)

    escreva ("\n") 
    escreva ("---------------------\n")   
    escreva (" SEQUENCIA RICCI     \n")
    escreva ("---------------------\n")  
    escreva ("\n") 

		para (i = 0; i <= quant; i++)
    {
			t3 = t1 + t2
			t1 = t2
			t2 = t3

      se (i==quant)
      {
        escreva(t3, ". ")
      }
      senao
      {
        escreva(t3, ", ")
      }

    }
    escreva ("\n") 
    
  } 


  funcao exercicio8()
  {
    inteiro num=0, div=0

    escreva ("---------------------------------------------------------\n")   
    escreva ("Entrar com um número e imprimir todos os seus divisores. \n")
    escreva ("---------------------------------------------------------\n")
    escreva ("\n")  
		
		escreva("Digite um numero: ")
		leia(num)		

    escreva ("\n----------------------\n")   
    escreva ("   DIVISORES DE ", num, "\n")
    escreva ("----------------------\n")

		para (div = 0; div <= num; div++)
    {			
			se (num%div== 0)
      {
			  se(div==num)
        {
          escreva(div, ".\n")
        }
        senao
        {
				  escreva(div, ", ")
        }
			}
		}
    
  } 


  funcao exercicio9()
  {
    // vetores inicializados com 4 posicoes para facilitar os testes
    inteiro idade[4], aval[4], soma_idade=0, exc=0, reg=0, bom=0, total=0
    real porcent, media_idade

    escreva ("-----------------------------------------------------------------------------------------------\n")   
    escreva ("No dia da estreia do filme Senhor dos Anéis uma grande emissora de TV realizou uma \n")
    escreva ("pesquisa logo após o encerramento do filme. Cada espectador respondeu a um questionário \n")
    escreva ("no qual constava sua idade e a sua opinião em relação ao filme: excelente-3; bom -2; regular- 1\n")
    escreva ("Criar um algoritmo que receba a idade e a opinião de 20 espectadores, calcule e imprima: \n")
    escreva ("1) a média das idades das pessoas que responderam excelente; \n")
    escreva ("2) a quantidade de pessoas que responderam regular; \n")
    escreva ("3) a percentagem de pessoas que responderam bom entre todos os; \n")
    escreva ("4) quantidade de expectadores analisados. \n")
    escreva ("-----------------------------------------------------------------------------------------------\n")
    escreva ("\n")  

    escreva ("------------------------------\n")
    escreva ("       AVALIE O FILME \n")
    escreva ("------------------------------\n")
    escreva ("1 - informe 1 para regularlar \n")
    escreva ("2 - informe 2 para bom \n")
    escreva ("3 - informe 3 para excelente \n")
      
    para (inteiro posicao=1; posicao < 4; posicao++)
    {
      faca
      {
        escreva("\nInforme a idade do ", posicao, " expectador: ")
        leia (idade[posicao])
        total++

        se (idade[posicao]<=0)
        {
          escreva("Idade invalida!\n")
          escreva("Informe idade: ")
          leia (idade[posicao])
        }
      }
      enquanto(idade[posicao]<=0)

      faca
      {
        escreva("Informe a avaliacao do ", posicao, " expectador: ")
        leia (aval[posicao])

        se (aval[posicao]==3)
        {
          soma_idade = (soma_idade+idade[posicao])
          exc++
        }
        senao se (aval[posicao]==1)
        {
          reg++
        }
        senao se (aval[posicao]==2)
        {
          bom++
        }
        senao
        {
          escreva("Opcao invalida!\n")
          escreva("Informe a avaliacao: ")
          leia (aval[posicao])
        }
      }
      enquanto ((aval[posicao]!= 1) e (aval[posicao]!= 2) e (aval[posicao]!= 3))
    }

    media_idade = (soma_idade/exc)
    porcent = ((bom*100)/20)
    escreva("\n------------------------------------------------------------------------------------------\n")
    escreva("                              RESULTADOS DAS ANALISES\n")
    escreva("------------------------------------------------------------------------------------------\n")
    escreva("Expectadores que avaliaram como EXCELENTE, tem idade media de ", media_idade, " anos.\n")
    escreva("Expectadores que avaliaram como BOM, foram ", reg, ".\n")
    escreva("Expectadores que avaliaram como REGULAR, foram ", porcent, "% dos expectadores entrevistados.\n")
    escreva("Foram entrevistados ", total, " expectadores.\n")
    escreva("------------------------------------------------------------------------------------------\n\n")
  } 


  funcao exercicio10()
  {
    inteiro num, triplo, posicao=1

    escreva ("-------------------------------------------------------------------------------------------------------\n")   
    escreva ("Entrar com números e imprimir o triplo de cada número. O algoritmo acaba quando entrar o número (-999).\n")
    escreva ("-------------------------------------------------------------------------------------------------------\n")

    faca
    {
      escreva ("\nInforme o ", posicao, " numero: ")
      leia(num)
      triplo = (num*3)

      se (num == -999)
      {
        escreva("\n---------------\n")
        escreva("    OBRIGADA   \n")
        escreva("---------------\n")
      }
      senao
      {
        escreva ("O triplo do numero informados e: ")
        escreva (triplo, "\n")
        posicao++
      }
    }
    enquanto (num != -999)

  }

  funcao exercicio11()
  {
    inteiro num, div, i=1, ordem=1

    escreva ("----------------------------------------------------------------------------------------\n")   
    escreva ("Ler vários números até entrar o número (-999). Para cada número imprimir seus divisores.\n")
    escreva ("----------------------------------------------------------------------------------------\n")


    faca
    {
      escreva ("\nInforme o ", ordem, " numero: ")
      leia(num)
      
      se (num == -999)
      {
        escreva("\n---------------\n")
        escreva("    OBRIGADA   \n")
        escreva("---------------\n")
      }
      senao
      {
        escreva ("Os divisores do numero informado sao: ")
      }

      para (i = 1; i <= num; i++)
      {	
        se (num%i == 0)
        {
          se (i==num)
          {
            escreva (i, ".\n")
          }
          senao
          {
            escreva (i, ", ")
          }
          
        }
      }
      ordem++
    }
    enquanto (num != -999)

  }

  funcao exercicio12()
  {
    real a = 5000.000,b = 7000.000
    inteiro anos = 0

    escreva ("-----------------------------------------------------------------------------------------------\n")   
    escreva ("Dado um país A, com 5.000.000 de habitantes e uma taxa de natalidade de 3% ao ano, e \n")
    escreva ("um país B com 7.000.000 de habitantes e uma taxa de natalidade de 2% ao ano calcular e \n")
    escreva ("imprimir o tempo necessário para que a população do pais A ultrapasse a população do pais B.\n")
    escreva ("-----------------------------------------------------------------------------------------------\n")
    escreva ("\n") 

		faca
    {
			a = a + a * 0.03
			b = b + b * 0.02
			anos++
		}	
    enquanto (a<=b)

		escreva ("Em ", anos, " anos o pais A ultrapassa a quantidade de habitantes do pais B.\n")
		escreva("\nPais A: ", a)
		escreva("\nPais B: ", b, "\n")
  }

  funcao exercicio13()
  {
    inteiro num, div=0, primo=0, i

    escreva ("-----------------------------------------------------------------------------------\n")   
    escreva ("Escrever um algoritmo que receba vários números inteiros e imprima a quantidade de \n")
    escreva ("números primos dentre os números que foram digitados. O algoritmo acaba quando se  \n")
    escreva ("digita um número menor ou igual a 0.\n")
    escreva ("-----------------------------------------------------------------------------------\n")
    escreva ("\n") 



		faca
    {
      escreva ("Informe os numeros: ")
      leia (num)

      
      para (i = 1; i <= num; i++)
      {
        se (num%i == 0) 
        {
          div=div+1
		    }
		  }
      se (div == 2)
      {
        primo=primo+1
        
		  }
      div=0

		}	
    enquanto (num > 0)
    se (num == 0)
    {
      escreva ("\nForam informados ", primo, " numeros primos.\n")
    }

  }

  funcao exercicio14()
  {
    inteiro i=1, 
    real resto, num, num_principal, raiz=0

    escreva ("-----------------------------------------------------------------------------------------------\n")   
    escreva ("Uma das maneiras de se conseguir a raiz quadrada de um número é subtrair do número os \n")
    escreva ("ímpares consecutivos a partir de 1, até que o resultado da subtração seja menor ou igual a zero \n")
    escreva ("O número de vezes que se conseguir fazer a subtração é a raiz quadrada exata (resultado 0)\n")
    escreva ("ou aproximada do número (resultado negativo). Indicar se a raiz é exata ou aproximada.\n")
    escreva ("Exemplo: Raiz de 16 \n")
    escreva ("16-1=15 (1); 15-3=12 (2); 12-5=7 (3); 7-7=0 (4) \n")
    escreva ("A raiz de 16 é 4 (exata). \n")
    escreva ("-----------------------------------------------------------------------------------------------\n")
    escreva ("\n")   



    faca
    {
      escreva ("Informe um numero para calcular a raiz quadrada exata ou aproximada: \n")  
      escreva ("----------------- Informe 0 (zero) para sair ----------------------- \n\n") 
      escreva ("NUMERO: ") 
      leia (num_principal)
      num = num_principal
      
      
      faca
      {
        resto = num-i
        i=i+2
        raiz=raiz+1
        num = resto
      }
      enquanto(resto>0)
      
      se (num_principal <> 0)
      {
        se (resto == 0 ) 
        {
          escreva ("\nA raiz quadrada EXATA de ", num_principal, " e ", raiz, " - EXATA.\n\n")
        }
        senao
        {
          escreva ("A raiz quadrada de ", num_principal, " e ", raiz, " - APROXIMADA.\n\n")
        }
      }

      raiz=0
      i=1
    }
    enquanto (num_principal <> 0)

    escreva ("\n** OBRIGADA **\n")

  }

  funcao exercicio15()
  {
    real massa_inicial, massa_final, perda, massa, horas, minutos, segundos, resto
    inteiro tempo

    escreva ("-----------------------------------------------------------------------------------------------\n")   
    escreva ("Na Usina de Angra dos Reis, os técnicos analisam a perda de massa de um material radioativo. \n")
    escreva ("Sabendo-se que este perde 25% de sua massa a cada 30 segundos, criar um algoritmo que imprima \n")
    escreva ("o tempo necessário para a que massa deste material se torne menor que 0,10 grama.\n")
    escreva ("O algoritmo deve calcular o tempo para várias massas.\n")
    escreva ("Indicar o resultado em hh:mm:ss.ssss (Horas, minutos e segundos). \n")
    escreva ("-----------------------------------------------------------------------------------------------\n")
    escreva ("\n")   

    escreva ("Informe a massa em gramas: ")
    leia (massa_inicial)

    massa = massa_inicial
    tempo = 0
    perda = (massa_inicial* 0.25)
    

    faca
    {
      massa_final = massa - perda
      massa = massa_final
      tempo = tempo+30
    }
    enquanto(massa > 0,10)

    horas = tempo/3600
		resto = tempo% 3600
		minutos = resto/60
		segundos = resto%60

    //hora = Matematica.arredondar(Matematica.PI,5)  
    escreva ("\n------------------------------------------------------------------------------------------------------------")
    escreva ("\nA massa de ", massa_inicial, " gramas tem ", perda, " gramas de perda de massa a cada 30 segundos.\n")
    escreva ("O tempo necessario para que a massa ", massa_inicial, " gramas seja menor que 0,10 grama, eh de ", horas, "h ", minutos, "m ", segundos, "s.")
    escreva ("\n------------------------------------------------------------------------------------------------------------\n\n")

  }

  funcao exercicio16()
  {
    caracter mercadoria 
    real valor, l_total, a_total, h_total, total_geral, total_quant
    inteiro dia, mes, ano, l_quant, a_quant, h_quant, i

    escreva ("--------------------------------------------------------------------------------------\n")   
    escreva ("Criar um algoritmo que receba o valor e o código de várias mercadorias vendidas em um \n")
    escreva ("determinado dia. Os códigos obedecem à lista a seguir: \n")
    escreva ("‘L’ – limpeza; ‘A’ – alimentação; ‘H’ - higiene\n")
    escreva ("Calcule e imprima:\n")
    escreva ("1) total vendido naquele dia, com todos os códigos juntos; \n")
    escreva ("2) total vendido naquele dia em cada um dos códigos. \n")
    escreva ("Para encerrar a entrada de dados, digite o valor da mercadoria zero, aceitar o código do \n")
    escreva ("produto minúsculo ou maiúsculo, validar para que aceite somente os valores das entradas. \n")
    escreva ("-----------------------------------------------------------------------------------------\n")
    escreva ("\n") 

    escreva("--- MERCADORIA ---\n")
		escreva("L -  Limpeza \n")
		escreva("A -  Alimentacao \n")
		escreva("H -  Higiene \n")	
    escreva("------------------ \n")
    
    valor =1
    l_total = 0
    a_total = 0
    h_total = 0
    total_geral = 0
    total_quant = 0
    l_quant = 0
    a_quant = 0
    h_quant = 0
    dia = 0
    mes = 0
    ano = 0
    i=1

    escreva ("\n** Informe a data da compra **\n")

    // VALIDA DIA MES E ANO
    faca
    {
      escreva ("Informe o DIA da compra no formato dd: ")
      leia(dia)

      se((dia<1)ou(dia>30))
      {
        escreva ("DIA INVALIDO * ")
      }
      senao
      {
        faca
        {
          escreva ("Informe o MES da compra no formato mm: ")
          leia(mes)

          se ((mes<1)ou(mes>12))
          {
            escreva ("MES INVALIDO * ")
          }
          senao
          {
            faca
            {
              escreva ("Informe o ANO da compra no formato aaaa: ")
              leia(ano)

              se ((ano<1900)ou(ano>2022))
              {
                escreva ("ANO INVALIDO * ")
              }
            }
            enquanto((ano<1900)ou(ano>2022))
          }
        }
        enquanto((mes<1)ou(mes>12))
      }
    }
    enquanto ((dia<1)ou(dia>30))
    // FIM DO VALIDA DIA MES E ANO

    faca
    {
      escreva("\n** Informe o valor = 0 (zero) para SAIR **\n")
      escreva("Informe o valor da ", i, " mercadoria: R$")
      leia(valor)

      se (valor != 0)
      {
        escreva("Informe o codigo da mercadoria: ")	
        leia (mercadoria)

        se ((mercadoria == "L") ou (mercadoria == "l") ou
          (mercadoria == "A") ou (mercadoria == "a") ou
          (mercadoria == "H") ou (mercadoria == "h"))
        {
          se ((mercadoria == "L") ou (mercadoria == "l"))
          {
            l_total = l_total+valor
            l_quant = l_quant+1
          }
          senao se ((mercadoria == "A") ou (mercadoria == "a"))
          {
            a_total = a_total+valor
            a_quant = a_quant+1  
          }
          senao se ((mercadoria == "H") ou (mercadoria == "h"))
          {
            h_total = h_total+valor
            h_quant = h_quant+1
          }

        }
        senao
        {
          escreva("CODIGO INVALIDO * ")
        }
        i=i+1
      }
      senao //valor = 0
      {
        total_geral = (l_total+a_total+h_total)
        total_quant = (l_quant+a_quant+h_quant)

        escreva("\n----------------------------------------------------------\n")
        escreva("*************** VENDAS DE ", dia,"/",mes,"/", ano," *********************\n\n")
        escreva("QUANTIDADE DE ITENS: ", total_quant, " - VALOR TOTAL: R$", total_geral,"\n")
        escreva("ITENS LIMPEZA: ", l_quant, " - VALOR TOTAL: R$", l_total, "\n")
        escreva("ITENS ALIMENTACAO: ", a_quant, " - VALOR TOTAL: R$", a_total, "\n")
        escreva("ITENS HIGIENE: ", h_quant, " - VALOR TOTAL: R$", h_total, "\n")
        escreva("----------------------------------------------------------\n")
      }
    }
    enquanto (valor != 0)
    escreva("\nOBRIGADA!\n")
  }

  funcao exercicio17()
  {
    caracter op 
    inteiro primo=0, i, div=0, num, log
    real peso, altura, imc

    escreva ("---------------------------------------------------------------------\n")   
    escreva ("Criar um algoritmo que funcione através do menu a seguir. \n")
    escreva ("Menu: \n")
    escreva ("A - Exiba se o número informado é primo\n")
    escreva ("B - Calcula e retorne o logaritmo base 10 do número\n")
    escreva ("C - Calcula e imprime o Índice de Massa Corpórea (IMC) de uma pessoa; \n")
    escreva ("F- Termina o algoritmo \n")
    escreva ("Observações:\n")
    escreva ("Use a chamada de funções. \n")
    escreva ("Não permitir a entrada de números negativos\n")
    escreva ("Validar as regras de cálculo do IMC\n")
    escreva ("IMC = Peso dividido pela altura ao quadrado (peso/altura²) \n")
    escreva ("Classificação:\n")
    escreva ("Menor que 18.5 - Abaixo do peso\n")
    escreva ("Entre 18.5 e 24.9 - Peso normal\n")
    escreva ("Entre 25.0 e 29.9 - Pré-obesidade\n")
    escreva ("Entre 30.0 e 34.9 - Obesidade Grau 1\n")
    escreva ("Entre 35.0 e 39.9 - Obesidade Grau 2\n")
    escreva ("Acima de 40 - Obesidade Grau 3\n")
    escreva ("-----------------------------------------------------------------------\n")
    escreva ("\n")  

    escreva ("------------------- MENU --------------------- \n")
    escreva ("A - Verificar se numero eh primo\n")
    escreva ("B - Logaritmo base 10\n")
    escreva ("C - Calcular  o Índice de Massa Corpórea (IMC)\n")
    escreva ("F - Sair \n")
    escreva ("---------------------------------------------- \n")

    faca
    {
      escreva ("Opcao: ")
      leia(op)

      escolha (op)
      {
        caso "A": //verifica numero primo
        escreva ("\n** VERIFICAR SE NUMERO EH PRIMO **\n ")
        escreva ("Informe o numero: ")
        leia (primo)
      
        para (i = 1; i <= primo; i++)
        {
          se (primo%i == 0) 
          {
            div=div+1
		      }
		    }

        se (div == 2)
        {
          escreva("\n*** ", primo, " eh um numero PRIMO! ***\n")
		    }
        senao
        {
          escreva("\n*** ", primo, " NAO eh um numero PRIMO! ***\n")
        }
        div=0
        pare

        caso "a": //verifica numero primo
        escreva ("\n** VERIFICAR SE NUMERO EH PRIMO **\n ")
        escreva ("Informe o numero: ")
        leia (primo)
      
        para (i = 1; i <= primo; i++)
        {
          se (primo%i == 0) 
          {
            div=div+1
		      }
		    }

        se (div == 2)
        {
          escreva("\n*** ", primo, " eh um numero PRIMO! ***\n")
		    }
        senao
        {
          escreva("\n*** ", primo, " NAO eh um numero PRIMO! ***\n")
        }
        div=0
        pare

        caso "B": //logaritmo base 10 do número - log 4 = 2 
          escreva ("\n** LOGARITMO BASE 10 **\n ")
          escreva ("Informe o numero: ")
          leia (num)
          
          escreva ("LOG de ", num, " na base 10 eh ", log, ".\n")
        pare

        caso "b": //logaritmo base 10 do número - log 4 = 2 
          escreva ("\n** LOGARITMO BASE 10 **\n ")
          escreva ("Informe o numero: ")
          leia (num)
          
          escreva ("LOG de ", num, " na base 10 eh ", log, ".\n")
        pare

        caso "C": 
        escreva ("\n** CALCULAR IMC ** \n")
        escreva ("Infome o peso:")
        leia (peso)
        escreva ("Infome a altura:")
        leia (altura)
        imc = (peso/(altura*altura))
        //imc = Matematica.arredondar(Matematica.PI,2) 
        
        se((imc>= 18.5) e (imc<=24.9))
        {
          escreva ("IMC = ", imc, " PESO NORMAL\n")
        } 
        senao se((imc>=25.0) e (imc<=29.9))
        {
          escreva ("IMC = ", imc, " PRE-OBESIDADE\n")
        }
        senao se((imc>=30.0) e (imc<=34.9))
        {
          escreva ("IMC = ", imc, " OBESIDADE GRAU 1\n")
        }
        senao se((imc>=35.0) e (imc<=39.9)) 
        {
          escreva ("IMC = ", imc, " OBESIDADE GRAU 2\n")
        }
        senao se (imc>=40)
        {
          escreva ("IMC = ", imc, " OBESIDADE GRAU 3\n")
        }
        pare

        caso "c": 
        escreva ("\n** CALCULAR IMC ** \n")
        escreva ("Infome o peso:")
        leia (peso)
        escreva ("Infome a altura:")
        leia (altura)
        imc = (peso/(altura*altura))
        //imc = Matematica.arredondar(Matematica.PI,2) 
        
        se((imc>= 18.5) e (imc<=24.9))
        {
          escreva ("IMC = ", imc, " PESO NORMAL\n")
        } 
        senao se((imc>=25.0) e (imc<=29.9))
        {
          escreva ("IMC = ", imc, " PRE-OBESIDADE\n")
        }
        senao se((imc>=30.0) e (imc<=34.9))
        {
          escreva ("IMC = ", imc, " OBESIDADE GRAU 1\n")
        }
        senao se((imc>=35.0) e (imc<=39.9)) 
        {
          escreva ("IMC = ", imc, " OBESIDADE GRAU 2\n")
        }
        senao se (imc>=40)
        {
          escreva ("IMC = ", imc, " OBESIDADE GRAU 3\n")
        }
        pare
      }
    }
    enquanto((op := "F") ou (op!= "f"))
    escreva ("\nOBRIGADA\n")

  }
    
}
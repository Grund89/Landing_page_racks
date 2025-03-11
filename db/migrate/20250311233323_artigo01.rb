class AddPrimeiroArtigoAoBlog < ActiveRecord::Migration[7.0]
  def up
    Article.create(
      title: 'NÃO PERMITA QUE AS CONSEQUÊNCIAS DE UM ACIDENTE DE TRABALHO OU DE UMA DOENÇA RELACIONADA COMPROMETAM O SEU SUSTENTO!',
      content: 'Acidentes de trabalho e doenças ocupacionais podem mudar drasticamente a vida de um trabalhador. Além dos impactos físicos e emocionais, há também o risco de perda de renda e instabilidade financeira. No entanto, com informação e medidas preventivas, é possível minimizar esses riscos e garantir seus direitos.

      Conheça Seus Direitos
      Todo trabalhador formal tem direito à cobertura do INSS em caso de acidente de trabalho ou doença ocupacional. Isso inclui auxílio-doença acidentário, aposentadoria por invalidez e pensão por morte para dependentes. Além disso, empresas devem fornecer um ambiente seguro e condições adequadas de trabalho.

      Previna-se Contra Acidentes e Doenças Ocupacionais
      Utilize sempre os Equipamentos de Proteção Individual (EPIs).
      Siga rigorosamente os procedimentos de segurança da empresa.
      Informe qualquer risco ou condição perigosa ao setor responsável.
      Faça exames periódicos para identificar problemas de saúde relacionados ao trabalho.
      O Que Fazer em Caso de Acidente de Trabalho?
      Busque Atendimento Médico Imediato – Sua saúde é prioridade.
      Comunique o Ocorrido – Informe à empresa e peça a emissão da CAT (Comunicação de Acidente de Trabalho).
      Guarde Todos os Documentos – Laudos médicos e exames são essenciais para garantir seus direitos.
      Busque Orientação Jurídica – Se necessário, um advogado trabalhista pode ajudar no processo de indenização e benefícios.
      Apoio Financeiro e Recolocação
      Caso a recuperação impeça o retorno à função anterior, considere cursos de requalificação profissional. O governo e algumas empresas oferecem programas para reintegração no mercado de trabalho.

      Conclusão
      Acidentes de trabalho e doenças ocupacionais não devem comprometer seu sustento. Com prevenção, conhecimento dos seus direitos e ações rápidas, você pode garantir proteção financeira e qualidade de vida para você e sua família.

      Perguntas Frequentes
      1. O que caracteriza um acidente de trabalho?
      É qualquer evento inesperado que cause dano físico ou mental ao trabalhador durante a execução do trabalho.

      2. Como solicitar o auxílio-doença acidentário?
      É necessário apresentar a CAT e passar por perícia médica no INSS.

      3. A empresa pode ser responsabilizada por um acidente?
      Sim, se houver negligência na segurança ou na disponibilização de EPIs.

      4. O que fazer se a empresa se recusar a emitir a CAT?
      O trabalhador pode solicitar diretamente ao INSS, sindicato ou Ministério do Trabalho.

      5. Existe reabilitação profissional para trabalhadores acidentados?
      Sim, o INSS oferece programas para readaptação profissional.'
    )
  end

  def down
    Article.find_by(title: 'Título do seu artigo').destroy
  end
end

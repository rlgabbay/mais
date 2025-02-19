/*
Query para publicar a tabela.

Esse é o lugar para:
    - modificar nomes, ordem e tipos de colunas
    - dar join com outras tabelas
    - criar colunas extras (e.g. logs, proporções, etc.)

Qualquer coluna definida aqui deve também existir em `table_config.yaml`.

# Além disso, sinta-se à vontade para alterar alguns nomes obscuros
# para algo um pouco mais explícito.

TIPOS:
    - Para modificar tipos de colunas, basta substituir STRING por outro tipo válido.
    - Exemplo: `SAFE_CAST(column_name AS NUMERIC) column_name`
    - Mais detalhes: https://cloud.google.com/bigquery/docs/reference/standard-sql/data-types
*/

CREATE VIEW basedosdados-dev.br_inep_censo_escolar.escola AS
SELECT 
SAFE_CAST(ano AS INT64) ano,
SAFE_CAST(sigla_uf AS STRING) sigla_uf,
SAFE_CAST(id_municipio AS STRING) id_municipio,
SAFE_CAST(id_escola AS STRING) id_escola,
SAFE_CAST(rede AS STRING) rede,
SAFE_CAST(tipo_categoria_escola_privada AS STRING) tipo_categoria_escola_privada,
SAFE_CAST(tipo_localizacao AS STRING) tipo_localizacao,
SAFE_CAST(tipo_localizacao_diferenciada AS STRING) tipo_localizacao_diferenciada,
SAFE_CAST(tipo_situacao_funcionamento AS STRING) tipo_situacao_funcionamento,
SAFE_CAST(id_orgao_regional AS STRING) id_orgao_regional,
SAFE_CAST(data_ano_letivo_inicio AS DATE) data_ano_letivo_inicio,
SAFE_CAST(data_ano_letivo_termino AS DATE) data_ano_letivo_termino,
SAFE_CAST(vinculo_secretaria_educacao AS INT64) vinculo_secretaria_educacao,
SAFE_CAST(vinculo_seguranca_publica AS INT64) vinculo_seguranca_publica,
SAFE_CAST(vinculo_secretaria_saude AS INT64) vinculo_secretaria_saude,
SAFE_CAST(vinculo_outro_orgao AS INT64) vinculo_outro_orgao,
SAFE_CAST(conveniada_poder_publico AS INT64) conveniada_poder_publico,
SAFE_CAST(tipo_convenio_poder_publico AS STRING) tipo_convenio_poder_publico,
SAFE_CAST(mantenedora_escola_privada_empresa AS INT64) mantenedora_escola_privada_empresa,
SAFE_CAST(mantenedora_escola_privada_ong AS INT64) mantenedora_escola_privada_ong,
SAFE_CAST(mantenedora_escola_privada_oscip AS INT64) mantenedora_escola_privada_oscip,
SAFE_CAST(mantenedora_escola_privada_ong_oscip AS INT64) mantenedora_escola_privada_ong_oscip,
SAFE_CAST(mantenedora_escola_privada_sindicato AS INT64) mantenedora_escola_privada_sindicato,
SAFE_CAST(mantenedora_escola_privada_sistema_s AS INT64) mantenedora_escola_privada_sistema_s,
SAFE_CAST(mantenedora_escola_privada_sem_fins AS INT64) mantenedora_escola_privada_sem_fins,
SAFE_CAST(cnpj_escola_privada AS STRING) cnpj_escola_privada,
SAFE_CAST(cnpj_mantenedora AS STRING) cnpj_mantenedora,
SAFE_CAST(tipo_regulamentacao AS STRING) tipo_regulamentacao,
SAFE_CAST(tipo_responsavel_regulamentacao AS STRING) tipo_responsavel_regulamentacao,
SAFE_CAST(id_escola_sede AS STRING) id_escola_sede,
SAFE_CAST(id_ies_ofertante AS STRING) id_ies_ofertante,
SAFE_CAST(local_funcionamento_predio_escolar AS INT64) local_funcionamento_predio_escolar,
SAFE_CAST(tipo_local_funcionamento_predio_escolar AS STRING) tipo_local_funcionamento_predio_escolar,
SAFE_CAST(local_funcionamento_sala_empresa AS INT64) local_funcionamento_sala_empresa,
SAFE_CAST(local_funcionamento_socioeducativo AS INT64) local_funcionamento_socioeducativo,
SAFE_CAST(local_funcionamento_unidade_prisional AS INT64) local_funcionamento_unidade_prisional,
SAFE_CAST(local_funcionamento_prisional_socio AS INT64) local_funcionamento_prisional_socio,
SAFE_CAST(local_funcionamento_templo_igreja AS INT64) local_funcionamento_templo_igreja,
SAFE_CAST(local_funcionamento_casa_professor AS INT64) local_funcionamento_casa_professor,
SAFE_CAST(local_funcionamento_galpao AS INT64) local_funcionamento_galpao,
SAFE_CAST(tipo_local_funcionamento_galpao AS STRING) tipo_local_funcionamento_galpao,
SAFE_CAST(local_funcionamento_outra_escola AS INT64) local_funcionamento_outra_escola,
SAFE_CAST(local_funcionamento_outros AS INT64) local_funcionamento_outros,
SAFE_CAST(predio_compartilhado AS INT64) predio_compartilhado,
SAFE_CAST(agua_filtrada AS INT64) agua_filtrada,
SAFE_CAST(agua_potavel AS INT64) agua_potavel,
SAFE_CAST(agua_rede_publica AS INT64) agua_rede_publica,
SAFE_CAST(agua_poco_artesiano AS INT64) agua_poco_artesiano,
SAFE_CAST(agua_cacimba AS INT64) agua_cacimba,
SAFE_CAST(agua_fonte_rio AS INT64) agua_fonte_rio,
SAFE_CAST(agua_inexistente AS INT64) agua_inexistente,
SAFE_CAST(energia_rede_publica AS INT64) energia_rede_publica,
SAFE_CAST(energia_gerador AS INT64) energia_gerador,
SAFE_CAST(energia_gerador_fossil AS INT64) energia_gerador_fossil,
SAFE_CAST(energia_outros AS INT64) energia_outros,
SAFE_CAST(energia_renovavel AS INT64) energia_renovavel,
SAFE_CAST(energia_inexistente AS INT64) energia_inexistente,
SAFE_CAST(esgoto_rede_publica AS INT64) esgoto_rede_publica,
SAFE_CAST(esgoto_fossa AS INT64) esgoto_fossa,
SAFE_CAST(esgoto_fossa_septica AS INT64) esgoto_fossa_septica,
SAFE_CAST(esgoto_fossa_comum AS INT64) esgoto_fossa_comum,
SAFE_CAST(esgoto_inexistente AS INT64) esgoto_inexistente,
SAFE_CAST(lixo_servico_coleta AS INT64) lixo_servico_coleta,
SAFE_CAST(lixo_queima AS INT64) lixo_queima,
SAFE_CAST(lixo_enterrado AS INT64) lixo_enterrado,
SAFE_CAST(lixo_destino_final_publico AS INT64) lixo_destino_final_publico,
SAFE_CAST(lixo_descarta_outra_area AS INT64) lixo_descarta_outra_area,
SAFE_CAST(lixo_joga_outra_area AS INT64) lixo_joga_outra_area,
SAFE_CAST(lixo_outros AS INT64) lixo_outros,
SAFE_CAST(lixo_reciclagem AS INT64) lixo_reciclagem,
SAFE_CAST(tratamento_lixo_separacao AS INT64) tratamento_lixo_separacao,
SAFE_CAST(tratamento_lixo_reutilizacao AS INT64) tratamento_lixo_reutilizacao,
SAFE_CAST(tratamento_lixo_reciclagem AS INT64) tratamento_lixo_reciclagem,
SAFE_CAST(tratamento_lixo_inexistente AS INT64) tratamento_lixo_inexistente,
SAFE_CAST(almoxarifado AS INT64) almoxarifado,
SAFE_CAST(area_verde AS INT64) area_verde,
SAFE_CAST(auditorio AS INT64) auditorio,
SAFE_CAST(banheiro_fora_predio AS INT64) banheiro_fora_predio,
SAFE_CAST(banheiro_dentro_predio AS INT64) banheiro_dentro_predio,
SAFE_CAST(banheiro AS INT64) banheiro,
SAFE_CAST(banheiro_educacao_infantil AS INT64) banheiro_educacao_infantil,
SAFE_CAST(banheiro_pne AS INT64) banheiro_pne,
SAFE_CAST(banheiro_funcionarios AS INT64) banheiro_funcionarios,
SAFE_CAST(banheiro_chuveiro AS INT64) banheiro_chuveiro,
SAFE_CAST(bercario AS INT64) bercario,
SAFE_CAST(biblioteca AS INT64) biblioteca,
SAFE_CAST(biblioteca_sala_leitura AS INT64) biblioteca_sala_leitura,
SAFE_CAST(cozinha AS INT64) cozinha,
SAFE_CAST(despensa AS INT64) despensa,
SAFE_CAST(dormitorio_aluno AS INT64) dormitorio_aluno,
SAFE_CAST(dormitorio_professor AS INT64) dormitorio_professor,
SAFE_CAST(laboratorio_ciencias AS INT64) laboratorio_ciencias,
SAFE_CAST(laboratorio_informatica AS INT64) laboratorio_informatica,
SAFE_CAST(patio_coberto AS INT64) patio_coberto,
SAFE_CAST(patio_descoberto AS INT64) patio_descoberto,
SAFE_CAST(parque_infantil AS INT64) parque_infantil,
SAFE_CAST(piscina AS INT64) piscina,
SAFE_CAST(quadra_esportes AS INT64) quadra_esportes,
SAFE_CAST(quadra_esportes_coberta AS INT64) quadra_esportes_coberta,
SAFE_CAST(quadra_esportes_descoberta AS INT64) quadra_esportes_descoberta,
SAFE_CAST(refeitorio AS INT64) refeitorio,
SAFE_CAST(sala_atelie_artes AS INT64) sala_atelie_artes,
SAFE_CAST(sala_musica_coral AS INT64) sala_musica_coral,
SAFE_CAST(sala_estudio_danca AS INT64) sala_estudio_danca,
SAFE_CAST(sala_multiuso AS INT64) sala_multiuso,
SAFE_CAST(sala_diretoria AS INT64) sala_diretoria,
SAFE_CAST(sala_leitura AS INT64) sala_leitura,
SAFE_CAST(sala_professor AS INT64) sala_professor,
SAFE_CAST(sala_repouso_aluno AS INT64) sala_repouso_aluno,
SAFE_CAST(secretaria AS INT64) secretaria,
SAFE_CAST(sala_atendimento_especial AS INT64) sala_atendimento_especial,
SAFE_CAST(terreirao AS INT64) terreirao,
SAFE_CAST(viveiro AS INT64) viveiro,
SAFE_CAST(dependencia_pne AS INT64) dependencia_pne,
SAFE_CAST(lavanderia AS INT64) lavanderia,
SAFE_CAST(dependencia_outras AS INT64) dependencia_outras,
SAFE_CAST(acessibilidade_corrimao AS INT64) acessibilidade_corrimao,
SAFE_CAST(acessibilidade_elevador AS INT64) acessibilidade_elevador,
SAFE_CAST(acessibilidade_pisos_tateis AS INT64) acessibilidade_pisos_tateis,
SAFE_CAST(acessibilidade_vao_livre AS INT64) acessibilidade_vao_livre,
SAFE_CAST(acessibilidade_rampas AS INT64) acessibilidade_rampas,
SAFE_CAST(acessibilidade_sinal_sonoro AS INT64) acessibilidade_sinal_sonoro,
SAFE_CAST(acessibilidade_sinal_tatil AS INT64) acessibilidade_sinal_tatil,
SAFE_CAST(acessibilidade_sinal_visual AS INT64) acessibilidade_sinal_visual,
SAFE_CAST(acessibilidade_inexistente AS INT64) acessibilidade_inexistente,
SAFE_CAST(quantidade_sala_existente AS INT64) quantidade_sala_existente,
SAFE_CAST(quantidade_sala_utilizada AS INT64) quantidade_sala_utilizada,
SAFE_CAST(quantidade_sala_utilizada_dentro AS INT64) quantidade_sala_utilizada_dentro,
SAFE_CAST(quantidade_sala_utilizada_fora AS INT64) quantidade_sala_utilizada_fora,
SAFE_CAST(quantidade_sala_utilizada_climatizada AS INT64) quantidade_sala_utilizada_climatizada,
SAFE_CAST(quantidade_sala_utilizada_acessivel AS INT64) quantidade_sala_utilizada_acessivel,
SAFE_CAST(equipamento_parabolica AS INT64) equipamento_parabolica,
SAFE_CAST(quantidade_equipamento_parabolica AS INT64) quantidade_equipamento_parabolica,
SAFE_CAST(equipamento_computador AS INT64) equipamento_computador,
SAFE_CAST(equipamento_copiadora AS INT64) equipamento_copiadora,
SAFE_CAST(quantidade_equipamento_copiadora AS INT64) quantidade_equipamento_copiadora,
SAFE_CAST(equipamento_impressora AS INT64) equipamento_impressora,
SAFE_CAST(quantidade_equipamento_impressora AS INT64) quantidade_equipamento_impressora,
SAFE_CAST(equipamento_impressora_multifuncional AS INT64) equipamento_impressora_multifuncional,
SAFE_CAST(quantidade_equipamento_impressora_multifuncional AS INT64) quantidade_equipamento_impressora_multifuncional,
SAFE_CAST(equipamento_scanner AS INT64) equipamento_scanner,
SAFE_CAST(equipamento_nenhum AS INT64) equipamento_nenhum,
SAFE_CAST(equipamento_dvd AS INT64) equipamento_dvd,
SAFE_CAST(quantidade_equipamento_dvd AS INT64) quantidade_equipamento_dvd,
SAFE_CAST(equipamento_som AS INT64) equipamento_som,
SAFE_CAST(quantidade_equipamento_som AS INT64) quantidade_equipamento_som,
SAFE_CAST(equipamento_tv AS INT64) equipamento_tv,
SAFE_CAST(quantidade_equipamento_tv AS INT64) quantidade_equipamento_tv,
SAFE_CAST(equipamento_lousa_digital AS INT64) equipamento_lousa_digital,
SAFE_CAST(quantidade_equipamento_lousa_digital AS INT64) quantidade_equipamento_lousa_digital,
SAFE_CAST(equipamento_multimidia AS INT64) equipamento_multimidia,
SAFE_CAST(quantidade_equipamento_multimidia AS INT64) quantidade_equipamento_multimidia,
SAFE_CAST(equipamento_videocassete AS INT64) equipamento_videocassete,
SAFE_CAST(quantidade_equipamento_videocassete AS INT64) quantidade_equipamento_videocassete,
SAFE_CAST(equipamento_retroprojetor AS INT64) equipamento_retroprojetor,
SAFE_CAST(quantidade_equipamento_retroprojetor AS INT64) quantidade_equipamento_retroprojetor,
SAFE_CAST(equipamento_fax AS INT64) equipamento_fax,
SAFE_CAST(quantidade_equipamento_fax AS INT64) quantidade_equipamento_fax,
SAFE_CAST(equipamento_foto AS INT64) equipamento_foto,
SAFE_CAST(quantidade_equipamento_foto AS INT64) quantidade_equipamento_foto,
SAFE_CAST(quantidade_computador_aluno AS INT64) quantidade_computador_aluno,
SAFE_CAST(desktop_aluno AS INT64) desktop_aluno,
SAFE_CAST(quantidade_desktop_aluno AS INT64) quantidade_desktop_aluno,
SAFE_CAST(computador_portatil_aluno AS INT64) computador_portatil_aluno,
SAFE_CAST(quantidade_computador_portatil_aluno AS INT64) quantidade_computador_portatil_aluno,
SAFE_CAST(tablet_aluno AS INT64) tablet_aluno,
SAFE_CAST(quantidade_tablet_aluno AS INT64) quantidade_tablet_aluno,
SAFE_CAST(quantidade_computador AS INT64) quantidade_computador,
SAFE_CAST(quantidade_computador_administrativo AS INT64) quantidade_computador_administrativo,
SAFE_CAST(internet AS INT64) internet,
SAFE_CAST(internet_alunos AS INT64) internet_alunos,
SAFE_CAST(internet_administrativo AS INT64) internet_administrativo,
SAFE_CAST(internet_aprendizagem AS INT64) internet_aprendizagem,
SAFE_CAST(internet_comunidade AS INT64) internet_comunidade,
SAFE_CAST(acesso_internet_computador AS INT64) acesso_internet_computador,
SAFE_CAST(acesso_internet_dispositivo_pessoal AS INT64) acesso_internet_dispositivo_pessoal,
SAFE_CAST(tipo_rede_local AS STRING) tipo_rede_local,
SAFE_CAST(banda_larga AS INT64) banda_larga,
SAFE_CAST(quantidade_funcionario AS INT64) quantidade_funcionario,
SAFE_CAST(profissional_administrativo AS INT64) profissional_administrativo,
SAFE_CAST(quantidade_profissional_administrativo AS INT64) quantidade_profissional_administrativo,
SAFE_CAST(profissional_servico_geral AS INT64) profissional_servico_geral,
SAFE_CAST(quantidade_profissional_servico_geral AS INT64) quantidade_profissional_servico_geral,
SAFE_CAST(profissional_bibliotecario AS INT64) profissional_bibliotecario,
SAFE_CAST(quantidade_profissional_bibliotecario AS INT64) quantidade_profissional_bibliotecario,
SAFE_CAST(profissional_saude AS INT64) profissional_saude,
SAFE_CAST(quantidade_profissional_saude AS INT64) quantidade_profissional_saude,
SAFE_CAST(profissional_coordenador AS INT64) profissional_coordenador,
SAFE_CAST(quantidade_profissional_coordenador AS INT64) quantidade_profissional_coordenador,
SAFE_CAST(profissional_fonaudiologo AS INT64) profissional_fonaudiologo,
SAFE_CAST(quantidade_profissional_fonaudiologo AS INT64) quantidade_profissional_fonaudiologo,
SAFE_CAST(profissional_nutricionista AS INT64) profissional_nutricionista,
SAFE_CAST(quantidade_profissional_nutricionista AS INT64) quantidade_profissional_nutricionista,
SAFE_CAST(profissional_psicologo AS INT64) profissional_psicologo,
SAFE_CAST(quantidade_profissional_psicologo AS INT64) quantidade_profissional_psicologo,
SAFE_CAST(profissional_alimentacao AS INT64) profissional_alimentacao,
SAFE_CAST(quantidade_profissional_alimentacao AS INT64) quantidade_profissional_alimentacao,
SAFE_CAST(profissional_pedagogia AS INT64) profissional_pedagogia,
SAFE_CAST(quantidade_profissional_pedagogia AS INT64) quantidade_profissional_pedagogia,
SAFE_CAST(profissional_secretario AS INT64) profissional_secretario,
SAFE_CAST(quantidade_profissional_secretario AS INT64) quantidade_profissional_secretario,
SAFE_CAST(profissional_seguranca AS INT64) profissional_seguranca,
SAFE_CAST(quantidade_profissional_seguranca AS INT64) quantidade_profissional_seguranca,
SAFE_CAST(profissional_monitor AS INT64) profissional_monitor,
SAFE_CAST(quantidade_profissional_monitor AS INT64) quantidade_profissional_monitor,
SAFE_CAST(profissional_gestao AS INT64) profissional_gestao,
SAFE_CAST(quantidade_profissional_gestao AS INT64) quantidade_profissional_gestao,
SAFE_CAST(profissional_assistente_social AS INT64) profissional_assistente_social,
SAFE_CAST(quantidade_profissional_assistente_social AS INT64) quantidade_profissional_assistente_social,
SAFE_CAST(alimentacao AS INT64) alimentacao,
SAFE_CAST(organizacao_serie_ano AS INT64) organizacao_serie_ano,
SAFE_CAST(organizacao_semestre AS INT64) organizacao_semestre,
SAFE_CAST(organizacao_fundamental_ciclo AS INT64) organizacao_fundamental_ciclo,
SAFE_CAST(organizacao_grupo_nao_seriado AS INT64) organizacao_grupo_nao_seriado,
SAFE_CAST(organizacao_modulo AS INT64) organizacao_modulo,
SAFE_CAST(organizacao_alternancia AS INT64) organizacao_alternancia,
SAFE_CAST(material_pedagogico_multimidia AS INT64) material_pedagogico_multimidia,
SAFE_CAST(material_pedagogico_infantil AS INT64) material_pedagogico_infantil,
SAFE_CAST(material_pedagogico_cientifico AS INT64) material_pedagogico_cientifico,
SAFE_CAST(material_pedagogico_difusao AS INT64) material_pedagogico_difusao,
SAFE_CAST(material_pedagogico_musical AS INT64) material_pedagogico_musical,
SAFE_CAST(material_pedagogico_jogo AS INT64) material_pedagogico_jogo,
SAFE_CAST(material_pedagogico_artistica AS INT64) material_pedagogico_artistica,
SAFE_CAST(material_pedagogico_desportiva AS INT64) material_pedagogico_desportiva,
SAFE_CAST(material_pedagogico_indigena AS INT64) material_pedagogico_indigena,
SAFE_CAST(material_pedagogico_etnico AS INT64) material_pedagogico_etnico,
SAFE_CAST(material_pedagogico_campo AS INT64) material_pedagogico_campo,
SAFE_CAST(material_pedagogico_nenhum AS INT64) material_pedagogico_nenhum,
SAFE_CAST(material_especifico_quilombola AS INT64) material_especifico_quilombola,
SAFE_CAST(material_especifico_indigena AS INT64) material_especifico_indigena,
SAFE_CAST(material_especifico_nao_utiliza AS INT64) material_especifico_nao_utiliza,
SAFE_CAST(educacao_indigena AS INT64) educacao_indigena,
SAFE_CAST(tipo_lingua_indigena AS STRING) tipo_lingua_indigena,
SAFE_CAST(id_lingua_indigena_1 AS STRING) id_lingua_indigena_1,
SAFE_CAST(id_lingua_indigena_2 AS STRING) id_lingua_indigena_2,
SAFE_CAST(id_lingua_indigena_3 AS STRING) id_lingua_indigena_3,
SAFE_CAST(programa_brasil_alfabetizado AS INT64) programa_brasil_alfabetizado,
SAFE_CAST(final_semana AS INT64) final_semana,
SAFE_CAST(exame_selecao AS INT64) exame_selecao,
SAFE_CAST(reserva_vaga_raca_cor AS INT64) reserva_vaga_raca_cor,
SAFE_CAST(reserva_vaga_renda AS INT64) reserva_vaga_renda,
SAFE_CAST(reserva_vaga_publica AS INT64) reserva_vaga_publica,
SAFE_CAST(reserva_vaga_pcd AS INT64) reserva_vaga_pcd,
SAFE_CAST(reserva_vaga_outros AS INT64) reserva_vaga_outros,
SAFE_CAST(reserva_vaga_nenhuma AS INT64) reserva_vaga_nenhuma,
SAFE_CAST(redes_sociais AS INT64) redes_sociais,
SAFE_CAST(espaco_atividade_comunidade AS INT64) espaco_atividade_comunidade,
SAFE_CAST(espaco_equipamento_alunos AS INT64) espaco_equipamento_alunos,
SAFE_CAST(orgao_associacao_pais AS INT64) orgao_associacao_pais,
SAFE_CAST(orgao_associacao_pais_mestres AS INT64) orgao_associacao_pais_mestres,
SAFE_CAST(orgao_conselho_escolar AS INT64) orgao_conselho_escolar,
SAFE_CAST(orgao_gremio_estudantil AS INT64) orgao_gremio_estudantil,
SAFE_CAST(orgao_outros AS INT64) orgao_outros,
SAFE_CAST(orgao_nenhum AS INT64) orgao_nenhum,
SAFE_CAST(tipo_proposta_pedagogica AS STRING) tipo_proposta_pedagogica,
SAFE_CAST(tipo_aee AS STRING) tipo_aee,
SAFE_CAST(tipo_atividade_complementar AS STRING) tipo_atividade_complementar,
SAFE_CAST(mediacao_presencial AS INT64) mediacao_presencial,
SAFE_CAST(mediacao_semipresencial AS INT64) mediacao_semipresencial,
SAFE_CAST(mediacao_ead AS INT64) mediacao_ead,
SAFE_CAST(regular AS INT64) regular,
SAFE_CAST(diurno AS INT64) diurno,
SAFE_CAST(noturno AS INT64) noturno,
SAFE_CAST(ead AS INT64) ead,
SAFE_CAST(educacao_basica AS INT64) educacao_basica,
SAFE_CAST(etapa_ensino_infantil AS INT64) etapa_ensino_infantil,
SAFE_CAST(etapa_ensino_infantil_creche AS INT64) etapa_ensino_infantil_creche,
SAFE_CAST(etapa_ensino_infantil_pre_escola AS INT64) etapa_ensino_infantil_pre_escola,
SAFE_CAST(etapa_ensino_fundamental AS INT64) etapa_ensino_fundamental,
SAFE_CAST(etapa_ensino_fundamental_anos_iniciais AS INT64) etapa_ensino_fundamental_anos_iniciais,
SAFE_CAST(etapa_ensino_fundamental_anos_finais AS INT64) etapa_ensino_fundamental_anos_finais,
SAFE_CAST(etapa_ensino_medio AS INT64) etapa_ensino_medio,
SAFE_CAST(etapa_ensino_profissional AS INT64) etapa_ensino_profissional,
SAFE_CAST(etapa_ensino_profissional_tecnica AS INT64) etapa_ensino_profissional_tecnica,
SAFE_CAST(etapa_ensino_eja AS INT64) etapa_ensino_eja,
SAFE_CAST(etapa_ensino_eja_fundamental AS INT64) etapa_ensino_eja_fundamental,
SAFE_CAST(etapa_ensino_eja_medio AS INT64) etapa_ensino_eja_medio,
SAFE_CAST(etapa_ensino_especial AS INT64) etapa_ensino_especial,
SAFE_CAST(etapa_ensino_especial_comum AS INT64) etapa_ensino_especial_comum,
SAFE_CAST(etapa_ensino_especial_exclusiva AS INT64) etapa_ensino_especial_exclusiva,
SAFE_CAST(etapa_ensino_creche_comum AS INT64) etapa_ensino_creche_comum,
SAFE_CAST(etapa_ensino_pre_escola_comum AS INT64) etapa_ensino_pre_escola_comum,
SAFE_CAST(etapa_ensino_fundamental_anos_iniciais_comum AS INT64) etapa_ensino_fundamental_anos_iniciais_comum,
SAFE_CAST(etapa_ensino_fundamental_anos_finais_comum AS INT64) etapa_ensino_fundamental_anos_finais_comum,
SAFE_CAST(etapa_ensino_medio_comum AS INT64) etapa_ensino_medio_comum,
SAFE_CAST(etapa_ensino_medio_integrado_comum AS INT64) etapa_ensino_medio_integrado_comum,
SAFE_CAST(etapa_ensino_medio_normal_comum AS INT64) etapa_ensino_medio_normal_comum,
SAFE_CAST(etapa_ensino_profissional_comum AS INT64) etapa_ensino_profissional_comum,
SAFE_CAST(etapa_ensino_eja_fundamental_comum AS INT64) etapa_ensino_eja_fundamental_comum,
SAFE_CAST(etapa_ensino_eja_medio_comum AS INT64) etapa_ensino_eja_medio_comum,
SAFE_CAST(etapa_ensino_eja_profissional_comum AS INT64) etapa_ensino_eja_profissional_comum,
SAFE_CAST(etapa_ensino_creche_especial_exclusiva AS INT64) etapa_ensino_creche_especial_exclusiva,
SAFE_CAST(etapa_ensino_pre_escola_especial_exclusiva AS INT64) etapa_ensino_pre_escola_especial_exclusiva,
SAFE_CAST(etapa_ensino_fundamental_anos_iniciais_especial_exclusiva AS INT64) etapa_ensino_fundamental_anos_iniciais_especial_exclusiva,
SAFE_CAST(etapa_ensino_fundamental_anos_finais_especial_exclusiva AS INT64) etapa_ensino_fundamental_anos_finais_especial_exclusiva,
SAFE_CAST(etapa_ensino_medio_especial_exclusiva AS INT64) etapa_ensino_medio_especial_exclusiva,
SAFE_CAST(etapa_ensino_medio_integrado_especial_exclusiva AS INT64) etapa_ensino_medio_integrado_especial_exclusiva,
SAFE_CAST(etapa_ensino_medio_normal_especial_exclusiva AS INT64) etapa_ensino_medio_normal_especial_exclusiva,
SAFE_CAST(etapa_ensino_profissional_especial_exclusiva AS INT64) etapa_ensino_profissional_especial_exclusiva,
SAFE_CAST(etapa_ensino_eja_fundamental_especial_exclusiva AS INT64) etapa_ensino_eja_fundamental_especial_exclusiva,
SAFE_CAST(etapa_ensino_eja_medio_especial_exclusiva AS INT64) etapa_ensino_eja_medio_especial_exclusiva,
SAFE_CAST(quantidade_matricula_educacao_basica AS INT64) quantidade_matricula_educacao_basica,
SAFE_CAST(quantidade_matricula_infantil AS INT64) quantidade_matricula_infantil,
SAFE_CAST(quantidade_matricula_infantil_creche AS INT64) quantidade_matricula_infantil_creche,
SAFE_CAST(quantidade_matricula_infantil_pre_escola AS INT64) quantidade_matricula_infantil_pre_escola,
SAFE_CAST(quantidade_matricula_fundamental AS INT64) quantidade_matricula_fundamental,
SAFE_CAST(quantidade_matricula_fundamental_anos_iniciais AS INT64) quantidade_matricula_fundamental_anos_iniciais,
SAFE_CAST(quantidade_matricula_fundamental_anos_finais AS INT64) quantidade_matricula_fundamental_anos_finais,
SAFE_CAST(quantidade_matricula_medio AS INT64) quantidade_matricula_medio,
SAFE_CAST(quantidade_matricula_profissional AS INT64) quantidade_matricula_profissional,
SAFE_CAST(quantidade_matricula_profissional_tecnica AS INT64) quantidade_matricula_profissional_tecnica,
SAFE_CAST(quantidade_matricula_eja AS INT64) quantidade_matricula_eja,
SAFE_CAST(quantidade_matricula_eja_fundamental AS INT64) quantidade_matricula_eja_fundamental,
SAFE_CAST(quantidade_matricula_eja_medio AS INT64) quantidade_matricula_eja_medio,
SAFE_CAST(quantidade_matricula_especial AS INT64) quantidade_matricula_especial,
SAFE_CAST(quantidade_matricula_especial_comum AS INT64) quantidade_matricula_especial_comum,
SAFE_CAST(quantidade_matricula_especial_exclusiva AS INT64) quantidade_matricula_especial_exclusiva,
SAFE_CAST(quantidade_matricula_feminino AS INT64) quantidade_matricula_feminino,
SAFE_CAST(quantidade_matricula_masculino AS INT64) quantidade_matricula_masculino,
SAFE_CAST(quantidade_matricula_nao_declarada AS INT64) quantidade_matricula_nao_declarada,
SAFE_CAST(quantidade_matricula_branca AS INT64) quantidade_matricula_branca,
SAFE_CAST(quantidade_matricula_preta AS INT64) quantidade_matricula_preta,
SAFE_CAST(quantidade_matricula_parda AS INT64) quantidade_matricula_parda,
SAFE_CAST(quantidade_matricula_amarela AS INT64) quantidade_matricula_amarela,
SAFE_CAST(quantidade_matricula_indigena AS INT64) quantidade_matricula_indigena,
SAFE_CAST(quantidade_matricula_idade_0_3 AS INT64) quantidade_matricula_idade_0_3,
SAFE_CAST(quantidade_matricula_idade_4_5 AS INT64) quantidade_matricula_idade_4_5,
SAFE_CAST(quantidade_matricula_idade_6_10 AS INT64) quantidade_matricula_idade_6_10,
SAFE_CAST(quantidade_matricula_idade_11_14 AS INT64) quantidade_matricula_idade_11_14,
SAFE_CAST(quantidade_matricula_idade_15_17 AS INT64) quantidade_matricula_idade_15_17,
SAFE_CAST(quantidade_matricula_idade_18 AS INT64) quantidade_matricula_idade_18,
SAFE_CAST(quantidade_matricula_diurno AS INT64) quantidade_matricula_diurno,
SAFE_CAST(quantidade_matricula_noturno AS INT64) quantidade_matricula_noturno,
SAFE_CAST(quantidade_matricula_ead AS INT64) quantidade_matricula_ead,
SAFE_CAST(quantidade_matricula_infantil_integral AS INT64) quantidade_matricula_infantil_integral,
SAFE_CAST(quantidade_matricula_infantil_creche_integral AS INT64) quantidade_matricula_infantil_creche_integral,
SAFE_CAST(quantidade_matricula_infantil_pre_escola_integral AS INT64) quantidade_matricula_infantil_pre_escola_integral,
SAFE_CAST(quantidade_matricula_fundamental_integral AS INT64) quantidade_matricula_fundamental_integral,
SAFE_CAST(quantidade_matricula_fundamental_anos_iniciais_integral AS INT64) quantidade_matricula_fundamental_anos_iniciais_integral,
SAFE_CAST(quantidade_matricula_fundamental_anos_finais_integral AS INT64) quantidade_matricula_fundamental_anos_finais_integral,
SAFE_CAST(quantidade_matricula_medio_integral AS INT64) quantidade_matricula_medio_integral,
SAFE_CAST(quantidade_docente_educacao_basica AS INT64) quantidade_docente_educacao_basica,
SAFE_CAST(quantidade_docente_infantil AS INT64) quantidade_docente_infantil,
SAFE_CAST(quantidade_docente_infantil_creche AS INT64) quantidade_docente_infantil_creche,
SAFE_CAST(quantidade_docente_infantil_pre_escola AS INT64) quantidade_docente_infantil_pre_escola,
SAFE_CAST(quantidade_docente_fundamental AS INT64) quantidade_docente_fundamental,
SAFE_CAST(quantidade_docente_fundamental_anos_iniciais AS INT64) quantidade_docente_fundamental_anos_iniciais,
SAFE_CAST(quantidade_docente_fundamental_anos_finais AS INT64) quantidade_docente_fundamental_anos_finais,
SAFE_CAST(quantidade_docente_medio AS INT64) quantidade_docente_medio,
SAFE_CAST(quantidade_docente_profissional AS INT64) quantidade_docente_profissional,
SAFE_CAST(quantidade_docente_profissional_tecnica AS INT64) quantidade_docente_profissional_tecnica,
SAFE_CAST(quantidade_docente_eja AS INT64) quantidade_docente_eja,
SAFE_CAST(quantidade_docente_eja_fundamental AS INT64) quantidade_docente_eja_fundamental,
SAFE_CAST(quantidade_docente_eja_medio AS INT64) quantidade_docente_eja_medio,
SAFE_CAST(quantidade_docente_especial AS INT64) quantidade_docente_especial,
SAFE_CAST(quantidade_docente_especial_comum AS INT64) quantidade_docente_especial_comum,
SAFE_CAST(quantidade_docente_especial_exclusiva AS INT64) quantidade_docente_especial_exclusiva,
SAFE_CAST(quantidade_turma_educacao_basica AS INT64) quantidade_turma_educacao_basica,
SAFE_CAST(quantidade_turma_infantil AS INT64) quantidade_turma_infantil,
SAFE_CAST(quantidade_turma_infantil_creche AS INT64) quantidade_turma_infantil_creche,
SAFE_CAST(quantidade_turma_infantil_pre_escola AS INT64) quantidade_turma_infantil_pre_escola,
SAFE_CAST(quantidade_turma_fundamental AS INT64) quantidade_turma_fundamental,
SAFE_CAST(quantidade_turma_fundamental_anos_iniciais AS INT64) quantidade_turma_fundamental_anos_iniciais,
SAFE_CAST(quantidade_turma_fundamental_anos_finais AS INT64) quantidade_turma_fundamental_anos_finais,
SAFE_CAST(quantidade_turma_medio AS INT64) quantidade_turma_medio,
SAFE_CAST(quantidade_turma_profissional AS INT64) quantidade_turma_profissional,
SAFE_CAST(quantidade_turma_profissional_tecnica AS INT64) quantidade_turma_profissional_tecnica,
SAFE_CAST(quantidade_turma_eja AS INT64) quantidade_turma_eja,
SAFE_CAST(quantidade_turma_eja_fundamental AS INT64) quantidade_turma_eja_fundamental,
SAFE_CAST(quantidade_turma_eja_medio AS INT64) quantidade_turma_eja_medio,
SAFE_CAST(quantidade_turma_especial AS INT64) quantidade_turma_especial,
SAFE_CAST(quantidade_turma_especial_comum AS INT64) quantidade_turma_especial_comum,
SAFE_CAST(quantidade_turma_especial_exclusiva AS INT64) quantidade_turma_especial_exclusiva
FROM basedosdados-dev.br_inep_censo_escolar_staging.escola AS t
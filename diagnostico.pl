:- discontiguous praga/2.
:- discontiguous doenca/2.

% Pragas em soja
praga(soja, lagarta).
praga(soja, percevejo).
praga(soja, pulgao).
praga(soja, acaro).
praga(soja, trips).
praga(soja, nematoide_galha).
praga(soja, nematoide_cisto).
praga(soja, broca).
praga(soja, coro).
praga(soja, vaquinha).
praga(soja, percevejo_marrom).
praga(soja, percevejo_verde).
praga(soja, percevejo_pequeno).
praga(soja, lagarta_falsa_medideira).
praga(soja, lagarta_das_vagens).

% Doenças em soja
doenca(soja, ferrugem).
doenca(soja, oidio).
doenca(soja, cancro_haste).
doenca(soja, antracnose).
doenca(soja, mofo_branco).
doenca(soja, mela).
doenca(soja, podridao_radicular).
doenca(soja, podridao_carvao).
doenca(soja, podridao_raceme).
doenca(soja, mancha_parda).
doenca(soja, mancha_target).
doenca(soja, mancha_olho_ra).
doenca(soja, mancha_cinza).
doenca(soja, murcha_verticillium).
doenca(soja, murcha_fusarium).

% Pragas em milho
praga(milho, lagarta).
praga(milho, pulgao).
praga(milho, broca_colmo).
praga(milho, lagarta_cartucho).
praga(milho, cigarrinha).
praga(milho, percevejo_barriga_verde).
praga(milho, percevejo_barriga_amarela).
praga(milho, lagarta_milho).
praga(milho, mosca_das_folhas).
praga(milho, tripes).
praga(milho, pulgao_do_milho).
praga(milho, lagarta_do_certo).
praga(milho, besouro_do_milho).
praga(milho, coro_milho).
praga(milho, lagarta_rosada).

% Doencas em milho
doenca(milho, ferrugem_comum).
doenca(milho, mancha_branca).
doenca(milho, ferrugem_tropical).
doenca(milho, oidio_milho).
doenca(milho, podridao_colmo).
doenca(milho, enfezamento).
doenca(milho, murcha_bacteriana).
doenca(milho, podridao_raceme_milho).
doenca(milho, mancha_foliar).
doenca(milho, mancha_parda_milho).
doenca(milho, murcha_verticillium_milho).
doenca(milho, murcha_fusarium_milho).
doenca(milho, antracnose_milho).
doenca(milho, podridao_carvao_milho).
doenca(milho, mofo_branco_milho).

% Sintomas associados as pragas e doencas
sintoma(lagarta, folhas_mastigadas).
sintoma(percevejo, frutos_perfurados).
sintoma(pulgao, folhas_amareladas).
sintoma(acaro, teias_nas_folhas).
sintoma(trips, folhas_prateadas).
sintoma(nematoide_galha, galhas_nas_raizes).
sintoma(nematoide_cisto, cistos_nas_raizes).
sintoma(broca, buracos_nos_ramos).
sintoma(coro, raizes_roidas).
sintoma(vaquinha, folhas_recortadas).
sintoma(percevejo_marrom, danos_nos_graos).
sintoma(percevejo_verde, frutos_deformados).
sintoma(percevejo_pequeno, sementes_mal_formadas).
sintoma(lagarta_falsa_medideira, folhas_cortadas).
sintoma(lagarta_das_vagens, buracos_nas_vagens).
sintoma(ferrugem, manchas_folhas).
sintoma(oidio, poeira_branca_folhas).
sintoma(cancro_haste, lesoes_nas_hastes).
sintoma(antracnose, necrose_nas_folhas).
sintoma(mofo_branco, mofo_nas_flores).
sintoma(mela, folhas_com_manchas_necroticas).
sintoma(podridao_radicular, raizes_podres).
sintoma(podridao_carvao, coloracao_escura_nos_caule).
sintoma(podridao_raceme, podridao_nos_racemos).
sintoma(mancha_parda, manchas_pardas_nas_folhas).
sintoma(mancha_target, manchas_alvo_folhas).
sintoma(mancha_olho_ra, manchas_redondas_nas_folhas).
sintoma(mancha_cinza, manchas_cinzas_nas_folhas).
sintoma(murcha_verticillium, murcha_planta).
sintoma(murcha_fusarium, murcha_amarelada_planta).
sintoma(broca_colmo, buracos_nos_colmos).
sintoma(lagarta_cartucho, folhas_rosadas).
sintoma(cigarrinha, folhas_cloroticas).
sintoma(percevejo_barriga_verde, frutos_danificados).
sintoma(percevejo_barriga_amarela, folhas_amareladas_milho).
sintoma(lagarta_milho, espigas_comidas).
sintoma(mosca_das_folhas, folhas_cortadas).
sintoma(tripes, folhas_deformadas).
sintoma(pulgao_do_milho, folhas_amareladas_milho).
sintoma(lagarta_do_certo, folhas_mastigadas_milho).
sintoma(besouro_do_milho, danos_ao_milho).
sintoma(coro_milho, raizes_comidas).
sintoma(lagarta_rosada, espigas_perfuradas).
sintoma(ferrugem_comum, manchas_avermelhadas).
sintoma(mancha_branca, manchas_brancas_folhas).
sintoma(ferrugem_tropical, manchas_avermelhadas_tropicais).
sintoma(oidio_milho, poeira_branca_folhas_milho).
sintoma(podridao_colmo, colmos_apodrecidos).
sintoma(enfezamento, plantas_anas).
sintoma(murcha_bacteriana, murcha_nas_folhas).
sintoma(podridao_raceme_milho, podridao_nos_racemos_milho).
sintoma(mancha_foliar, manchas_folhas_milho).
sintoma(mancha_parda_milho, manchas_pardas_folhas_milho).
sintoma(murcha_verticillium_milho, murcha_planta_milho).
sintoma(murcha_fusarium_milho, murcha_amarelada_planta_milho).
sintoma(antracnose_milho, necrose_nas_folhas_milho).
sintoma(podridao_carvao_milho, coloracao_escura_nos_caule_milho).
sintoma(mofo_branco_milho, mofo_nas_flores_milho).

% Cultura afetada por pragas e doencas
cultura_afetada(soja, lagarta).
cultura_afetada(soja, percevejo).
cultura_afetada(soja, pulgao).
cultura_afetada(soja, acaro).
cultura_afetada(soja, trips).
cultura_afetada(soja, nematoide_galha).
cultura_afetada(soja, nematoide_cisto).
cultura_afetada(soja, broca).
cultura_afetada(soja, coro).
cultura_afetada(soja, vaquinha).
cultura_afetada(soja, percevejo_marrom).
cultura_afetada(soja, percevejo_verde).
cultura_afetada(soja, percevejo_pequeno).
cultura_afetada(soja, lagarta_falsa_medideira).
cultura_afetada(soja, lagarta_das_vagens).
cultura_afetada(soja, ferrugem).
cultura_afetada(soja, oidio).
cultura_afetada(soja, cancro_haste).
cultura_afetada(soja, antracnose).
cultura_afetada(soja, mofo_branco).
cultura_afetada(soja, mela).
cultura_afetada(soja, podridao_radicular).
cultura_afetada(soja, podridao_carvao).
cultura_afetada(soja, podridao_raceme).
cultura_afetada(soja, mancha_parda).
cultura_afetada(soja, mancha_target).
cultura_afetada(soja, mancha_olho_ra).
cultura_afetada(soja, mancha_cinza).
cultura_afetada(soja, murcha_verticillium).
cultura_afetada(soja, murcha_fusarium).
cultura_afetada(milho, lagarta).
cultura_afetada(milho, pulgao).
cultura_afetada(milho, broca_colmo).
cultura_afetada(milho, lagarta_cartucho).
cultura_afetada(milho, cigarrinha).
cultura_afetada(milho, percevejo_barriga_verde).
cultura_afetada(milho, percevejo_barriga_amarela).
cultura_afetada(milho, lagarta_milho).
cultura_afetada(milho, mosca_das_folhas).
cultura_afetada(milho, tripes).
cultura_afetada(milho, pulgao_do_milho).
cultura_afetada(milho, lagarta_do_certo).
cultura_afetada(milho, besouro_do_milho).
cultura_afetada(milho, coro_milho).
cultura_afetada(milho, lagarta_rosada).
cultura_afetada(milho, ferrugem_comum).
cultura_afetada(milho, mancha_branca).
cultura_afetada(milho, ferrugem_tropical).
cultura_afetada(milho, oidio_milho).
cultura_afetada(milho, podridao_colmo).
cultura_afetada(milho, enfezamento).
cultura_afetada(milho, murcha_bacteriana).
cultura_afetada(milho, podridao_raceme_milho).
cultura_afetada(milho, mancha_foliar).
cultura_afetada(milho, mancha_parda_milho).
cultura_afetada(milho, murcha_verticillium_milho).
cultura_afetada(milho, murcha_fusarium_milho).
cultura_afetada(milho, antracnose_milho).
cultura_afetada(milho, podridao_carvao_milho).
cultura_afetada(milho, mofo_branco_milho).

% Regras para diagnosticar pragas e doencas com base nos sintomas
diagnosticar_praga(Cultura, Praga) :-
    praga(Cultura, Praga),
    sintoma(Praga, Sintoma),
    write('Sintoma observado: '), write(Sintoma), nl.

diagnosticar_doenca(Cultura, Doenca) :-
    doenca(Cultura, Doenca),
    sintoma(Doenca, Sintoma),
    write('Sintoma observado: '), write(Sintoma), nl.

% Diagnostico com base nos sintomas fornecidos
diagnosticar(Cultura, Sintoma) :-
    praga(Cultura, Praga),
    sintoma(Praga, Sintoma),
    write('A praga diagnosticada e: '), write(Praga), nl.
    
diagnosticar(Cultura, Sintoma) :-
    doenca(Cultura, Doenca),
    sintoma(Doenca, Sintoma),
    write('A doenca diagnosticada e: '), write(Doenca), nl.
#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('DATOS/SECEC2021019Protocol_DATA_2023-12-19_1538.csv')
#Setting Labels

label(data$record_id)="Record ID"
label(data$id)="Número de Identificación del Paciente"
label(data$f_nacimiento)="Fecha de Nacimiento"
label(data$f_ingreso)="Fecha de Ingreso al Servicio de Gastroenterología Pediatrica "
label(data$edad)="Edad en Meses"
label(data$t_ingreso)="Tipo de Ingreso al Servicio"
label(data$sexo)="Sexo"
label(data$m_consulta)="Motivo de Consulta"
label(data$dx_gi___1)="Diagnóstico Gastrointestinal  (choice=Enfermedad por Reflujo Gastroesofágico sin esofagitis)"
label(data$dx_gi___2)="Diagnóstico Gastrointestinal  (choice=Desnutrición proteicocalórica)"
label(data$dx_gi___3)="Diagnóstico Gastrointestinal  (choice=Pérdida anormal de peso)"
label(data$dx_gi___4)="Diagnóstico Gastrointestinal  (choice=Trastorno neurosensorial de la deglución)"
label(data$dx_gi___5)="Diagnóstico Gastrointestinal  (choice=Gastroenteritis)"
label(data$dx_gi___6)="Diagnóstico Gastrointestinal  (choice=Esofagitis Eosinofílica)"
label(data$dx_gi___7)="Diagnóstico Gastrointestinal  (choice=Diarrea persistente)"
label(data$dx_gi___8)="Diagnóstico Gastrointestinal  (choice=Enfermedad Celiaca)"
label(data$dx_gi___9)="Diagnóstico Gastrointestinal  (choice=Enfermedad por Reflujo Gastroesofágico con esofagitis)"
label(data$dx_gi___10)="Diagnóstico Gastrointestinal  (choice=Trastorno de la succión)"
label(data$dx_gi___11)="Diagnóstico Gastrointestinal  (choice=Disfagia)"
label(data$dx_gi___12)="Diagnóstico Gastrointestinal  (choice=Enfermedad de Hirschprung)"
label(data$dx_gi___13)="Diagnóstico Gastrointestinal  (choice=Laringomalacia)"
label(data$dx_gi___14)="Diagnóstico Gastrointestinal  (choice=Alergia a la proteína de leche de vaca)"
label(data$dx_gi___15)="Diagnóstico Gastrointestinal  (choice=Otra)"
label(data$otrodx_gi)="Si su respuesta fue: Otra, explique brevemente "
label(data$datos_de_identificacin_complete)="Complete?"
label(data$talla)="Talla (cm)"
label(data$peso)="Peso (gr)"
label(data$pc)="Perímetro Cefálico"
label(data$p_t)="Peso para la talla"
label(data$imc)="Índice de Masa Corporal"
label(data$dzt_e)="Desviación Estándar Talla para la Edad"
label(data$dzp_e)="Desviación Estándar Peso para la Edad"
label(data$dzp_t)="Desviación Estándar Peso para la Talla"
label(data$dzimc)="Desviación Estándar IMC para la edad"
label(data$dzpc)="Desviación Estándar Perímetro Cefálico "
label(data$medidas_antropomtricas_complete)="Complete?"
label(data$relacion_padres)="Relación de los Padres"
label(data$situ_laboral_m)="Situación Laboral Madre"
label(data$situ_laboral_p)="Situación Laboral Padre"
label(data$cuidador)="Principal Cuidador del Niño"
label(data$estrato)="Estrato socioeconómico"
label(data$tipo_fam)="Tipo de Familia"
label(data$num_personas)="Número de personas en el hogar"
label(data$emb_plan)="Embarazo Planeado"
label(data$emb_des)="Embarazo Deseado"
label(data$semanas_ges)="Semanas de Gestación"
label(data$enf_ges)="Enfermedad Gestacionales"
label(data$antecedentes_familiares_complete)="Complete?"
label(data$solicitud_p)="Se solicitaron paraclínicos?"
label(data$paraclinicos___1)="Nombre de paraclínicos solicitados (choice=Ecografía de higado, pancreas y vía biliar)"
label(data$paraclinicos___2)="Nombre de paraclínicos solicitados (choice=Ecografía de abdomen total)"
label(data$paraclinicos___3)="Nombre de paraclínicos solicitados (choice=Faringografía y Esofagograma)"
label(data$paraclinicos___4)="Nombre de paraclínicos solicitados (choice=Radiografía de abdomen)"
label(data$paraclinicos___5)="Nombre de paraclínicos solicitados (choice=Antigeno adenovirus)"
label(data$paraclinicos___6)="Nombre de paraclínicos solicitados (choice=Albumina en suero)"
label(data$paraclinicos___7)="Nombre de paraclínicos solicitados (choice=Amonio)"
label(data$paraclinicos___8)="Nombre de paraclínicos solicitados (choice=Bilirrubina total e indirecta)"
label(data$paraclinicos___9)="Nombre de paraclínicos solicitados (choice=Calcio)"
label(data$paraclinicos___10)="Nombre de paraclínicos solicitados (choice=Citomegalovirus IgG e IgM)"
label(data$paraclinicos___11)="Nombre de paraclínicos solicitados (choice=Cloro)"
label(data$paraclinicos___12)="Nombre de paraclínicos solicitados (choice=Colesterol total)"
label(data$paraclinicos___13)="Nombre de paraclínicos solicitados (choice=Creatinina)"
label(data$paraclinicos___14)="Nombre de paraclínicos solicitados (choice=Electrolitos en sudor)"
label(data$paraclinicos___15)="Nombre de paraclínicos solicitados (choice=Epstein Barr Ag)"
label(data$paraclinicos___16)="Nombre de paraclínicos solicitados (choice=Ferritina)"
label(data$paraclinicos___17)="Nombre de paraclínicos solicitados (choice=Fosfatasa alcalina)"
label(data$paraclinicos___18)="Nombre de paraclínicos solicitados (choice=Fosforo)"
label(data$paraclinicos___19)="Nombre de paraclínicos solicitados (choice=Gamma glutamil transferasa)"
label(data$paraclinicos___20)="Nombre de paraclínicos solicitados (choice=Glucosa en suero)"
label(data$paraclinicos___21)="Nombre de paraclínicos solicitados (choice=Herpes IgM)"
label(data$paraclinicos___22)="Nombre de paraclínicos solicitados (choice=Magnesio)"
label(data$paraclinicos___23)="Nombre de paraclínicos solicitados (choice=Nitrogeno Ureico)"
label(data$paraclinicos___24)="Nombre de paraclínicos solicitados (choice=Potasio)"
label(data$paraclinicos___25)="Nombre de paraclínicos solicitados (choice=Prealbumina)"
label(data$paraclinicos___26)="Nombre de paraclínicos solicitados (choice=Relacion lactato/piruvato)"
label(data$paraclinicos___27)="Nombre de paraclínicos solicitados (choice=Rubeola IgG e IgM)"
label(data$paraclinicos___28)="Nombre de paraclínicos solicitados (choice=PT)"
label(data$paraclinicos___29)="Nombre de paraclínicos solicitados (choice=PTT)"
label(data$paraclinicos___30)="Nombre de paraclínicos solicitados (choice=T4T)"
label(data$paraclinicos___ast)="Nombre de paraclínicos solicitados (choice=ALT)"
label(data$paraclinicos___31)="Nombre de paraclínicos solicitados (choice=Transferrina automatizada)"
label(data$paraclinicos___32)="Nombre de paraclínicos solicitados (choice=Trigliceridos)"
label(data$paraclinicos___33)="Nombre de paraclínicos solicitados (choice=Tripsina)"
label(data$paraclinicos___34)="Nombre de paraclínicos solicitados (choice=Uroanálisis)"
label(data$paraclinicos___35)="Nombre de paraclínicos solicitados (choice=VitD25HT)"
label(data$paraclinicos___36)="Nombre de paraclínicos solicitados (choice=Coproscopico)"
label(data$paraclinicos___37)="Nombre de paraclínicos solicitados (choice=Gases Venosos)"
label(data$paraclinicos___38)="Nombre de paraclínicos solicitados (choice=Transaminasa glutamico oxalacetica)"
label(data$paraclinicos___39)="Nombre de paraclínicos solicitados (choice=Transaminasa glutamico-piruvica)"
label(data$paraclinicos___40)="Nombre de paraclínicos solicitados (choice=Hemograma)"
label(data$paraclinicos___41)="Nombre de paraclínicos solicitados (choice=TSH)"
label(data$paraclinicos___42)="Nombre de paraclínicos solicitados (choice=Anticuerpos transglutaminasa)"
label(data$paraclinicos___43)="Nombre de paraclínicos solicitados (choice=Anticuerpos antigliadina deaminada)"
label(data$paraclinicos___44)="Nombre de paraclínicos solicitados (choice=HLA DQ2 y DQ8)"
label(data$paraclinicos___45)="Nombre de paraclínicos solicitados (choice=BUN)"
label(data$paraclinicos___46)="Nombre de paraclínicos solicitados (choice=Proteína C Reactiva)"
label(data$paraclinicos___47)="Nombre de paraclínicos solicitados (choice=Iontoforesis)"
label(data$paraclinicos___48)="Nombre de paraclínicos solicitados (choice=radiografía de vías digestivas altas)"
label(data$paraclinicos___49)="Nombre de paraclínicos solicitados (choice=Aminoácidos cuantitativos)"
label(data$paraclinicos___50)="Nombre de paraclínicos solicitados (choice=Ferritina)"
label(data$paraclinicos___51)="Nombre de paraclínicos solicitados (choice=Test de Sudor)"
label(data$paraclinicos___52)="Nombre de paraclínicos solicitados (choice=Proteínas diferenciadas)"
label(data$paraclinicos___53)="Nombre de paraclínicos solicitados (choice=Inmunocap)"
label(data$paraclinicos___54)="Nombre de paraclínicos solicitados (choice=Film array)"
label(data$paraclinicos___55)="Nombre de paraclínicos solicitados (choice=RNMC)"
label(data$paraclinicos___56)="Nombre de paraclínicos solicitados (choice=Vitamina B12)"
label(data$paraclinicos___57)="Nombre de paraclínicos solicitados (choice=citrulina)"
label(data$paraclinicos___58)="Nombre de paraclínicos solicitados (choice=CK-CPK)"
label(data$paraclinicos___59)="Nombre de paraclínicos solicitados (choice=Otro)"
label(data$paraclinicos___60)="Nombre de paraclínicos solicitados (choice=Sodio)"
label(data$paraclinicos___61)="Nombre de paraclínicos solicitados (choice=AST)"
label(data$otro_paraclinico)="Si dentro de la respuesta hubo otro, escriba cuales"
label(data$tx___1)="Tratamiento  (choice=Neocate)"
label(data$tx___2)="Tratamiento  (choice=Madre dieta sin lácteos)"
label(data$tx___3)="Tratamiento  (choice=Biogaia)"
label(data$tx___4)="Tratamiento  (choice=Pediavit)"
label(data$tx___5)="Tratamiento  (choice=Propilenglicol)"
label(data$tx___6)="Tratamiento  (choice=Picosulfato)"
label(data$tx___7)="Tratamiento  (choice=Rifaximina)"
label(data$tx___8)="Tratamiento  (choice=Ranitidina)"
label(data$tx___9)="Tratamiento  (choice=Gastrostomía)"
label(data$tx___10)="Tratamiento  (choice=Inhibidor bomba de protones)"
label(data$tx___11)="Tratamiento  (choice=Sulfato ferroso)"
label(data$tx___12)="Tratamiento  (choice=Vitamina D en gotas)"
label(data$tx___13)="Tratamiento  (choice=Nutrilon Peptijunior)"
label(data$tx___14)="Tratamiento  (choice=Calcibon)"
label(data$tx___15)="Tratamiento  (choice=Domperidona)"
label(data$tx___16)="Tratamiento  (choice=KidCal)"
label(data$tx___17)="Tratamiento  (choice=Puramino)"
label(data$tx___18)="Tratamiento  (choice=Otro)"
label(data$otrotx)="Si su respuesta fue otro, explique acá"
label(data$idx)="Impresión diagnóstica"
label(data$dx___1)="Diagnóstico Final (choice=APLV)"
label(data$dx___2)="Diagnóstico Final (choice=Gastroenteritis)"
label(data$dx___3)="Diagnóstico Final (choice=Desnutrición Proteinocalorica Severa)"
label(data$dx___4)="Diagnóstico Final (choice=ERGE con esofagitis)"
label(data$dx___5)="Diagnóstico Final (choice=Gastroparesia)"
label(data$dx___6)="Diagnóstico Final (choice=Diarrea Persistente)"
label(data$dx___7)="Diagnóstico Final (choice=Falla intestinal)"
label(data$dx___8)="Diagnóstico Final (choice=Enfermedad de hirschprung)"
label(data$dx___9)="Diagnóstico Final (choice=Falla de Medro)"
label(data$dx___10)="Diagnóstico Final (choice=Sindrome Emético)"
label(data$dx___11)="Diagnóstico Final (choice=ERGE sin esofagitis)"
label(data$dx___12)="Diagnóstico Final (choice=Trastorno de Deglución)"
label(data$dx___13)="Diagnóstico Final (choice=Otro)"
label(data$otrodx)="Si su respuesta fue otro, explique brevemente"
label(data$diagnstico_y_tratamiento_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$t_ingreso.factor = factor(data$t_ingreso,levels=c("1","2"))
data$sexo.factor = factor(data$sexo,levels=c("1","2"))
data$dx_gi___1.factor = factor(data$dx_gi___1,levels=c("0","1"))
data$dx_gi___2.factor = factor(data$dx_gi___2,levels=c("0","1"))
data$dx_gi___3.factor = factor(data$dx_gi___3,levels=c("0","1"))
data$dx_gi___4.factor = factor(data$dx_gi___4,levels=c("0","1"))
data$dx_gi___5.factor = factor(data$dx_gi___5,levels=c("0","1"))
data$dx_gi___6.factor = factor(data$dx_gi___6,levels=c("0","1"))
data$dx_gi___7.factor = factor(data$dx_gi___7,levels=c("0","1"))
data$dx_gi___8.factor = factor(data$dx_gi___8,levels=c("0","1"))
data$dx_gi___9.factor = factor(data$dx_gi___9,levels=c("0","1"))
data$dx_gi___10.factor = factor(data$dx_gi___10,levels=c("0","1"))
data$dx_gi___11.factor = factor(data$dx_gi___11,levels=c("0","1"))
data$dx_gi___12.factor = factor(data$dx_gi___12,levels=c("0","1"))
data$dx_gi___13.factor = factor(data$dx_gi___13,levels=c("0","1"))
data$dx_gi___14.factor = factor(data$dx_gi___14,levels=c("0","1"))
data$dx_gi___15.factor = factor(data$dx_gi___15,levels=c("0","1"))
data$datos_de_identificacin_complete.factor = factor(data$datos_de_identificacin_complete,levels=c("0","1","2"))
data$medidas_antropomtricas_complete.factor = factor(data$medidas_antropomtricas_complete,levels=c("0","1","2"))
data$relacion_padres.factor = factor(data$relacion_padres,levels=c("1","2","3","4"))
data$situ_laboral_m.factor = factor(data$situ_laboral_m,levels=c("1","2"))
data$situ_laboral_p.factor = factor(data$situ_laboral_p,levels=c("1","2"))
data$cuidador.factor = factor(data$cuidador,levels=c("1","2","3","4","5"))
data$estrato.factor = factor(data$estrato,levels=c("1","2","3","4","5","6"))
data$tipo_fam.factor = factor(data$tipo_fam,levels=c("1","2","3","4","5"))
data$emb_plan.factor = factor(data$emb_plan,levels=c("1","2"))
data$emb_des.factor = factor(data$emb_des,levels=c("1","2"))
data$antecedentes_familiares_complete.factor = factor(data$antecedentes_familiares_complete,levels=c("0","1","2"))
data$solicitud_p.factor = factor(data$solicitud_p,levels=c("1","0"))
data$paraclinicos___1.factor = factor(data$paraclinicos___1,levels=c("0","1"))
data$paraclinicos___2.factor = factor(data$paraclinicos___2,levels=c("0","1"))
data$paraclinicos___3.factor = factor(data$paraclinicos___3,levels=c("0","1"))
data$paraclinicos___4.factor = factor(data$paraclinicos___4,levels=c("0","1"))
data$paraclinicos___5.factor = factor(data$paraclinicos___5,levels=c("0","1"))
data$paraclinicos___6.factor = factor(data$paraclinicos___6,levels=c("0","1"))
data$paraclinicos___7.factor = factor(data$paraclinicos___7,levels=c("0","1"))
data$paraclinicos___8.factor = factor(data$paraclinicos___8,levels=c("0","1"))
data$paraclinicos___9.factor = factor(data$paraclinicos___9,levels=c("0","1"))
data$paraclinicos___10.factor = factor(data$paraclinicos___10,levels=c("0","1"))
data$paraclinicos___11.factor = factor(data$paraclinicos___11,levels=c("0","1"))
data$paraclinicos___12.factor = factor(data$paraclinicos___12,levels=c("0","1"))
data$paraclinicos___13.factor = factor(data$paraclinicos___13,levels=c("0","1"))
data$paraclinicos___14.factor = factor(data$paraclinicos___14,levels=c("0","1"))
data$paraclinicos___15.factor = factor(data$paraclinicos___15,levels=c("0","1"))
data$paraclinicos___16.factor = factor(data$paraclinicos___16,levels=c("0","1"))
data$paraclinicos___17.factor = factor(data$paraclinicos___17,levels=c("0","1"))
data$paraclinicos___18.factor = factor(data$paraclinicos___18,levels=c("0","1"))
data$paraclinicos___19.factor = factor(data$paraclinicos___19,levels=c("0","1"))
data$paraclinicos___20.factor = factor(data$paraclinicos___20,levels=c("0","1"))
data$paraclinicos___21.factor = factor(data$paraclinicos___21,levels=c("0","1"))
data$paraclinicos___22.factor = factor(data$paraclinicos___22,levels=c("0","1"))
data$paraclinicos___23.factor = factor(data$paraclinicos___23,levels=c("0","1"))
data$paraclinicos___24.factor = factor(data$paraclinicos___24,levels=c("0","1"))
data$paraclinicos___25.factor = factor(data$paraclinicos___25,levels=c("0","1"))
data$paraclinicos___26.factor = factor(data$paraclinicos___26,levels=c("0","1"))
data$paraclinicos___27.factor = factor(data$paraclinicos___27,levels=c("0","1"))
data$paraclinicos___28.factor = factor(data$paraclinicos___28,levels=c("0","1"))
data$paraclinicos___29.factor = factor(data$paraclinicos___29,levels=c("0","1"))
data$paraclinicos___30.factor = factor(data$paraclinicos___30,levels=c("0","1"))
data$paraclinicos___ast.factor = factor(data$paraclinicos___ast,levels=c("0","1"))
data$paraclinicos___31.factor = factor(data$paraclinicos___31,levels=c("0","1"))
data$paraclinicos___32.factor = factor(data$paraclinicos___32,levels=c("0","1"))
data$paraclinicos___33.factor = factor(data$paraclinicos___33,levels=c("0","1"))
data$paraclinicos___34.factor = factor(data$paraclinicos___34,levels=c("0","1"))
data$paraclinicos___35.factor = factor(data$paraclinicos___35,levels=c("0","1"))
data$paraclinicos___36.factor = factor(data$paraclinicos___36,levels=c("0","1"))
data$paraclinicos___37.factor = factor(data$paraclinicos___37,levels=c("0","1"))
data$paraclinicos___38.factor = factor(data$paraclinicos___38,levels=c("0","1"))
data$paraclinicos___39.factor = factor(data$paraclinicos___39,levels=c("0","1"))
data$paraclinicos___40.factor = factor(data$paraclinicos___40,levels=c("0","1"))
data$paraclinicos___41.factor = factor(data$paraclinicos___41,levels=c("0","1"))
data$paraclinicos___42.factor = factor(data$paraclinicos___42,levels=c("0","1"))
data$paraclinicos___43.factor = factor(data$paraclinicos___43,levels=c("0","1"))
data$paraclinicos___44.factor = factor(data$paraclinicos___44,levels=c("0","1"))
data$paraclinicos___45.factor = factor(data$paraclinicos___45,levels=c("0","1"))
data$paraclinicos___46.factor = factor(data$paraclinicos___46,levels=c("0","1"))
data$paraclinicos___47.factor = factor(data$paraclinicos___47,levels=c("0","1"))
data$paraclinicos___48.factor = factor(data$paraclinicos___48,levels=c("0","1"))
data$paraclinicos___49.factor = factor(data$paraclinicos___49,levels=c("0","1"))
data$paraclinicos___50.factor = factor(data$paraclinicos___50,levels=c("0","1"))
data$paraclinicos___51.factor = factor(data$paraclinicos___51,levels=c("0","1"))
data$paraclinicos___52.factor = factor(data$paraclinicos___52,levels=c("0","1"))
data$paraclinicos___53.factor = factor(data$paraclinicos___53,levels=c("0","1"))
data$paraclinicos___54.factor = factor(data$paraclinicos___54,levels=c("0","1"))
data$paraclinicos___55.factor = factor(data$paraclinicos___55,levels=c("0","1"))
data$paraclinicos___56.factor = factor(data$paraclinicos___56,levels=c("0","1"))
data$paraclinicos___57.factor = factor(data$paraclinicos___57,levels=c("0","1"))
data$paraclinicos___58.factor = factor(data$paraclinicos___58,levels=c("0","1"))
data$paraclinicos___59.factor = factor(data$paraclinicos___59,levels=c("0","1"))
data$paraclinicos___60.factor = factor(data$paraclinicos___60,levels=c("0","1"))
data$paraclinicos___61.factor = factor(data$paraclinicos___61,levels=c("0","1"))
data$tx___1.factor = factor(data$tx___1,levels=c("0","1"))
data$tx___2.factor = factor(data$tx___2,levels=c("0","1"))
data$tx___3.factor = factor(data$tx___3,levels=c("0","1"))
data$tx___4.factor = factor(data$tx___4,levels=c("0","1"))
data$tx___5.factor = factor(data$tx___5,levels=c("0","1"))
data$tx___6.factor = factor(data$tx___6,levels=c("0","1"))
data$tx___7.factor = factor(data$tx___7,levels=c("0","1"))
data$tx___8.factor = factor(data$tx___8,levels=c("0","1"))
data$tx___9.factor = factor(data$tx___9,levels=c("0","1"))
data$tx___10.factor = factor(data$tx___10,levels=c("0","1"))
data$tx___11.factor = factor(data$tx___11,levels=c("0","1"))
data$tx___12.factor = factor(data$tx___12,levels=c("0","1"))
data$tx___13.factor = factor(data$tx___13,levels=c("0","1"))
data$tx___14.factor = factor(data$tx___14,levels=c("0","1"))
data$tx___15.factor = factor(data$tx___15,levels=c("0","1"))
data$tx___16.factor = factor(data$tx___16,levels=c("0","1"))
data$tx___17.factor = factor(data$tx___17,levels=c("0","1"))
data$tx___18.factor = factor(data$tx___18,levels=c("0","1"))
data$dx___1.factor = factor(data$dx___1,levels=c("0","1"))
data$dx___2.factor = factor(data$dx___2,levels=c("0","1"))
data$dx___3.factor = factor(data$dx___3,levels=c("0","1"))
data$dx___4.factor = factor(data$dx___4,levels=c("0","1"))
data$dx___5.factor = factor(data$dx___5,levels=c("0","1"))
data$dx___6.factor = factor(data$dx___6,levels=c("0","1"))
data$dx___7.factor = factor(data$dx___7,levels=c("0","1"))
data$dx___8.factor = factor(data$dx___8,levels=c("0","1"))
data$dx___9.factor = factor(data$dx___9,levels=c("0","1"))
data$dx___10.factor = factor(data$dx___10,levels=c("0","1"))
data$dx___11.factor = factor(data$dx___11,levels=c("0","1"))
data$dx___12.factor = factor(data$dx___12,levels=c("0","1"))
data$dx___13.factor = factor(data$dx___13,levels=c("0","1"))
data$diagnstico_y_tratamiento_complete.factor = factor(data$diagnstico_y_tratamiento_complete,levels=c("0","1","2"))

levels(data$t_ingreso.factor)=c("Hospitalario","Consulta Externa")
levels(data$sexo.factor)=c("Femenino","Masculino")
levels(data$dx_gi___1.factor)=c("Unchecked","Checked")
levels(data$dx_gi___2.factor)=c("Unchecked","Checked")
levels(data$dx_gi___3.factor)=c("Unchecked","Checked")
levels(data$dx_gi___4.factor)=c("Unchecked","Checked")
levels(data$dx_gi___5.factor)=c("Unchecked","Checked")
levels(data$dx_gi___6.factor)=c("Unchecked","Checked")
levels(data$dx_gi___7.factor)=c("Unchecked","Checked")
levels(data$dx_gi___8.factor)=c("Unchecked","Checked")
levels(data$dx_gi___9.factor)=c("Unchecked","Checked")
levels(data$dx_gi___10.factor)=c("Unchecked","Checked")
levels(data$dx_gi___11.factor)=c("Unchecked","Checked")
levels(data$dx_gi___12.factor)=c("Unchecked","Checked")
levels(data$dx_gi___13.factor)=c("Unchecked","Checked")
levels(data$dx_gi___14.factor)=c("Unchecked","Checked")
levels(data$dx_gi___15.factor)=c("Unchecked","Checked")
levels(data$datos_de_identificacin_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$medidas_antropomtricas_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$relacion_padres.factor)=c("Separados","Divorciados","Union libre","Casados")
levels(data$situ_laboral_m.factor)=c("Trabaja","No trabaja")
levels(data$situ_laboral_p.factor)=c("Trabaja","No trabaja")
levels(data$cuidador.factor)=c("Madre","Padre","Ambos por igual","Niñerx","Familia extendida (abuelos, tías, primos)")
levels(data$estrato.factor)=c("1","2","3","4","5","6")
levels(data$tipo_fam.factor)=c("Nuclear","Extendida","Monoparental","Homoparental","Ensamblada")
levels(data$emb_plan.factor)=c("Si","No")
levels(data$emb_des.factor)=c("Si","No")
levels(data$antecedentes_familiares_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$solicitud_p.factor)=c("Si","No")
levels(data$paraclinicos___1.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___2.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___3.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___4.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___5.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___6.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___7.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___8.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___9.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___10.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___11.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___12.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___13.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___14.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___15.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___16.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___17.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___18.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___19.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___20.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___21.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___22.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___23.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___24.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___25.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___26.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___27.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___28.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___29.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___30.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___ast.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___31.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___32.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___33.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___34.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___35.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___36.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___37.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___38.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___39.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___40.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___41.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___42.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___43.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___44.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___45.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___46.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___47.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___48.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___49.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___50.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___51.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___52.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___53.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___54.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___55.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___56.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___57.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___58.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___59.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___60.factor)=c("Unchecked","Checked")
levels(data$paraclinicos___61.factor)=c("Unchecked","Checked")
levels(data$tx___1.factor)=c("Unchecked","Checked")
levels(data$tx___2.factor)=c("Unchecked","Checked")
levels(data$tx___3.factor)=c("Unchecked","Checked")
levels(data$tx___4.factor)=c("Unchecked","Checked")
levels(data$tx___5.factor)=c("Unchecked","Checked")
levels(data$tx___6.factor)=c("Unchecked","Checked")
levels(data$tx___7.factor)=c("Unchecked","Checked")
levels(data$tx___8.factor)=c("Unchecked","Checked")
levels(data$tx___9.factor)=c("Unchecked","Checked")
levels(data$tx___10.factor)=c("Unchecked","Checked")
levels(data$tx___11.factor)=c("Unchecked","Checked")
levels(data$tx___12.factor)=c("Unchecked","Checked")
levels(data$tx___13.factor)=c("Unchecked","Checked")
levels(data$tx___14.factor)=c("Unchecked","Checked")
levels(data$tx___15.factor)=c("Unchecked","Checked")
levels(data$tx___16.factor)=c("Unchecked","Checked")
levels(data$tx___17.factor)=c("Unchecked","Checked")
levels(data$tx___18.factor)=c("Unchecked","Checked")
levels(data$dx___1.factor)=c("Unchecked","Checked")
levels(data$dx___2.factor)=c("Unchecked","Checked")
levels(data$dx___3.factor)=c("Unchecked","Checked")
levels(data$dx___4.factor)=c("Unchecked","Checked")
levels(data$dx___5.factor)=c("Unchecked","Checked")
levels(data$dx___6.factor)=c("Unchecked","Checked")
levels(data$dx___7.factor)=c("Unchecked","Checked")
levels(data$dx___8.factor)=c("Unchecked","Checked")
levels(data$dx___9.factor)=c("Unchecked","Checked")
levels(data$dx___10.factor)=c("Unchecked","Checked")
levels(data$dx___11.factor)=c("Unchecked","Checked")
levels(data$dx___12.factor)=c("Unchecked","Checked")
levels(data$dx___13.factor)=c("Unchecked","Checked")
levels(data$diagnstico_y_tratamiento_complete.factor)=c("Incomplete","Unverified","Complete")

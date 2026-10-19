path <- "C:/Users/cjnj0/OneDrive/Escritorio/Marlon/especialidad/multivariado/Proyecto_final/"
datos <- read.csv(paste0(path,"social_media_dopamine_productivity.csv"))

sapply(datos,class) #Obteniendo escalas originales de los datos

#Transformando las variables a escalas correspondientes
datos$age_group <- as.factor(datos$age_group)
datos$gender <- as.factor(datos$gender)
datos$education_level <- as.factor(datos$education_level)
datos$relationship_status <- as.factor(datos$relationship_status)
datos$daily_check_frequency <- factor(datos$daily_check_frequency,levels=c("Once a week","Once a day","2-3 times a day","Every few hours", "Constantly"),ordered=TRUE)
datos$first_check_of_day <- factor(datos$first_check_of_day,levels=c("Within 5 mins of waking","Within 30 mins","Within 1 hour","During morning routine"),ordered=TRUE)
datos$late_night_scrolling <- factor(datos$late_night_scrolling,levels=c("Never","Rarely","Sometimes","Often","Daily"),ordered=TRUE)
datos$sm_during_work_study <- factor(datos$sm_during_work_study,levels=c("Never","Rarely","Sometimes","Often","Always"),ordered=TRUE)
datos$sm_during_meals <- factor(datos$sm_during_meals,levels=c("Never","Rarely","Sometimes","Often","Always"),ordered=TRUE)
datos$notifications_always_on <- as.factor(datos$notifications_always_on)
datos$scroll_without_purpose <- factor(datos$scroll_without_purpose,levels=c("Never","Rarely","Sometimes","Yes"),ordered=TRUE)
datos$doomscrolling_frequency <- factor(datos$doomscrolling_frequency,levels=c("Never","Rarely","Sometimes","Often","Daily"))
datos$sleep_quality <- factor(datos$sleep_quality,levels=c("Very poor","Poor","Fair","Good","Very good"),ordered=TRUE)
datos$exercise_frequency <- factor(datos$exercise_frequency,c("Never","1-2x/week","3-4x/week","Daily",ordered=TRUE))
datos$boredom_to_phone_reflex <- factor(datos$boredom_to_phone_reflex,levels=c("Never","Rarely","Sometimes","Yes"),ordered=TRUE)
datos$inability_to_delay_gratification <- factor(datos$inability_to_delay_gratification,levels=c("Never","Rarely","Sometimes","Yes"),ordered=TRUE)
datos$task_switching_frequency <- factor(datos$task_switching_frequency,levels=c("Low","Moderate","High"),ordered=TRUE)
datos$difficulty_starting_tasks <- factor(datos$difficulty_starting_tasks,levels=c("Never","Rarely","Sometimes","Yes"),ordered=TRUE)
datos$difficulty_maintaining_focus <- factor(datos$difficulty_maintaining_focus,levels=c("Never","Rarely","Sometimes","Yes"),ordered=TRUE)
datos$mind_wandering_during_work <- factor(datos$mind_wandering_during_work,levels=c("Never","Rarely","Sometimes","Yes"),ordered=TRUE)
datos$creative_output_frequency <- factor(datos$creative_output_frequency,levels=c("Very low","Low","Moderate","Good","Very good","Excellent"),ordered=TRUE)
datos$memory_recall_difficulty <- factor(datos$memory_recall_difficulty,levels=c("Never","Rarely","Sometimes","Yes"),ordered=TRUE)
datos$learning_retention_difficulty <- factor(datos$learning_retention_difficulty,levels=c("Never","Rarely","Sometimes","Yes"),ordered=TRUE)
datos$mental_fog_frequency <- factor(datos$mental_fog_frequency,levels=c("Never","Rarely","Sometimes","Often","Daily"),ordered=TRUE)
datos$irritability_when_offline <- factor(datos$irritability_when_offline,levels=c("Never","Rarely","Sometimes","Yes"),ordered=TRUE)
datos$mood_dependency_on_sm <- factor(datos$mood_dependency_on_sm,levels=c("Never","Rarely","Sometimes","Yes"),ordered=TRUE)
datos$productivity_decline_score <- factor(datos$productivity_decline_score,levels=c("None/Minimal","Early","Moderate","Severe","Critical"),ordered=TRUE)

#Datos faltantes
which(colSums(is.na(datos))> 0) #No hay datos faltantes



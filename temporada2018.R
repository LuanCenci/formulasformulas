
idade <- as.integer(difftime(Sys.time(),pilotos$dataNascimento,units = "days")/(365))
colnames(idades) <- c("valores","quantidade")

idades <- dplyr::count(pilotos,idade < as.integer(mean(idade)))

library(plotly)

plot_ly(idades,labels = ~valores,values=~quantidade,type='pie')

intervaloIdades <- cut(idade,breaks = c(min(idade),20,25,30,35,max(idade)))
intervaloIdades
plot(intervaloIdades)

paises <- dplyr::count(pilotos,nacionalidade)
plot_ly(paises,x = ~nacionalidade,y=~n,type = "bar")


dplyr::filter(pilotos,idade == max(idade))

dplyr::filter(pilotos,idade == min(idade))

mean(idade)





avg = mean(c(537/48, 500/48, 327/29, 827/74, 438/28, 723/62, 435/35, 760/66, 300/21,
             394/33, 293/26, 516/39, 173/16, 613/55, 183/16, 798/66, 346/31, 456/39,
             658/55, 148/13, 358/28, 253/20, 252/22, 426/38, 300/25, 567/48, 1002/89,
             1244/107, 507/29, 300/21, 752/63, 706/63, 2002/170, 918/76, 1654/150))


#Input you planned number of kills - 1 as the program counts the endpoint!
N_Kills = readline(prompt="Enter Planned # Of Kills - 1: ")
Initial_Enrage = readline(prompt="Enter Your Starting Enrage: ")
#Initial_Enrage = 0

N_Kills = as.integer(N_Kills)
Initial_Enrage = as.integer(Initial_Enrage)

str = seq(1,N_Kills+1,1)
enr = seq(Initial_Enrage, N_Kills*round(avg) + Initial_Enrage, round(avg))

droprate = function(S, E){
  d = 0.00001*E + 0.000025*S + 0.001
  return (d)
}


cat(paste0("Your average chance to see a unique on this steak is ", signif(1 - (prod(1 - droprate(str, enr))), 5)*100), "%", "\n")
cat(paste0("Your average chance to see a Frozen Core of Leng on this steak is ", signif(1 - (prod(1 - droprate(str, enr))), 5)*100*0.2), "%", "\n")
cat(paste0("Your average chance to see a Leng Artefact or Scripture of Wen on this steak is ", signif(1 - (prod(1 - droprate(str, enr))), 5)*100*0.4), "%", "\n")


#cat(paste0(1 - (droprate(str, enr))))
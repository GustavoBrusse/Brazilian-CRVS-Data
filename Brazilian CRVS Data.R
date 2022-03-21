# packages
install.packages("read.dbc")
install.packages("car")

require(read.dbc)
require(foreign)
library(car)

# Folder 
setwd("C:\\Users\\Gustavo\\Desktop\\DOUTORADO\\MINHA PROJEÇÃO\\Mortalidade_DO")

### MORTALIDADE
df94<-read.dbc("DORSP94.DBC")
df95<-read.dbc("DORSP95.DBC")
df96<-read.dbc("DOSP1996.DBC")
df97<-read.dbc("DOSP1997.DBC")
df98<-read.dbc("DOSP1998.DBC")
df99<-read.dbc("DOSP1999.DBC")
df00<-read.dbc("DOSP2000.DBC")
df01<-read.dbc("DOSP2001.DBC")
df02<-read.dbc("DOSP2002.DBC")
df03<-read.dbc("DOSP2003.DBC")
df04<-read.dbc("DOSP2004.DBC")
df05<-read.dbc("DOSP2005.DBC")
df06<-read.dbc("DOSP2006.DBC")
df07<-read.dbc("DOSP2007.DBC")
df08<-read.dbc("DOSP2008.DBC")
df09<-read.dbc("DOSP2009.DBC")
df10<-read.dbc("DOSP2010.DBC")
df11<-read.dbc("DOSP2011.DBC")
df12<-read.dbc("DOSP2012.DBC")
df13<-read.dbc("DOSP2013.DBC")
df14<-read.dbc("DOSP2014.DBC")
df15<-read.dbc("DOSP2015.DBC")
df16<-read.dbc("DOSP2016.DBC")
df17<-read.dbc("DOSP2017.DBC")

#write.csv(df,file="2009_2.csv")


# Transforming age variables
df94$IDADE2<-as.numeric(as.character(df94$IDADE))
df95$IDADE2<-as.numeric(as.character(df95$IDADE))
df96$IDADE2<-as.numeric(as.character(df96$IDADE))
df97$IDADE2<-as.numeric(as.character(df97$IDADE))
df98$IDADE2<-as.numeric(as.character(df98$IDADE))
df99$IDADE2<-as.numeric(as.character(df99$IDADE))
df00$IDADE2<-as.numeric(as.character(df00$IDADE))
df01$IDADE2<-as.numeric(as.character(df01$IDADE))
df02$IDADE2<-as.numeric(as.character(df02$IDADE))
df03$IDADE2<-as.numeric(as.character(df03$IDADE))
df04$IDADE2<-as.numeric(as.character(df04$IDADE))
df05$IDADE2<-as.numeric(as.character(df05$IDADE))
df06$IDADE2<-as.numeric(as.character(df06$IDADE))
df07$IDADE2<-as.numeric(as.character(df07$IDADE))
df08$IDADE2<-as.numeric(as.character(df08$IDADE))
df09$IDADE2<-as.numeric(as.character(df09$IDADE))
df10$IDADE2<-as.numeric(as.character(df10$IDADE))
df11$IDADE2<-as.numeric(as.character(df11$IDADE))
df12$IDADE2<-as.numeric(as.character(df12$IDADE))
df13$IDADE2<-as.numeric(as.character(df13$IDADE))
df14$IDADE2<-as.numeric(as.character(df14$IDADE))
df15$IDADE2<-as.numeric(as.character(df15$IDADE))
df16$IDADE2<-as.numeric(as.character(df16$IDADE))
df17$IDADE2<-as.numeric(as.character(df17$IDADE))

df94= transform(df94, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df94= transform(df94, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df95= transform(df95, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df95= transform(df95, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df96= transform(df96, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df96= transform(df96, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df97= transform(df97, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df97= transform(df97, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df98= transform(df98, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df98= transform(df98, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df99= transform(df99, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df99= transform(df99, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df00= transform(df00, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df00= transform(df00, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df01= transform(df01, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df01= transform(df01, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df02= transform(df02, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df02= transform(df02, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df03= transform(df03, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df03= transform(df03, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df04= transform(df04, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df04= transform(df04, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df05= transform(df05, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df05= transform(df05, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df06= transform(df06, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df06= transform(df06, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df07= transform(df07, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df07= transform(df07, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df08= transform(df08, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df08= transform(df08, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df09= transform(df09, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df09= transform(df09, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df10= transform(df10, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df10= transform(df10, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df11= transform(df11, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df11= transform(df11, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df12= transform(df12, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df12= transform(df12, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df13= transform(df13, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df13= transform(df13, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df14= transform(df14, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df14= transform(df14, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df15= transform(df15, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df15= transform(df15, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df16= transform(df16, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df16= transform(df16, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))
df17= transform(df17, idade_tab = recode(IDADE2, "0=NA;1:400=0;999=NA"))
df17= transform(df17, idade_tab2 = ifelse(idade_tab>400,idade_tab-400,ifelse(idade_tab==0,0,NA)))


# Creating deaths vectors by sex 
d94<-table(df94$idade_tab2, df94$SEXO)
dH94<-d94[,2]
dM94<-d94[,3]

d95<-table(df95$idade_tab2, df95$SEXO)
dH95<-d95[,1]
dM95<-d95[,2]

d96<-table(df96$idade_tab2, df96$SEXO)
dH96<-d96[,2]
dM96<-d96[,3]

d97<-table(df97$idade_tab2, df97$SEXO)
dH97<-d97[,2]
dM97<-d97[,3]

d98<-table(df98$idade_tab2, df98$SEXO)
dH98<-d98[,1]
dM98<-d98[,2]

d99<-table(df99$idade_tab2, df99$SEXO)
dH99<-d99[,1]
dM99<-d99[,2]

d00<-table(df00$idade_tab2, df00$SEXO)
dH00<-d00[,2]
dM00<-d00[,3]

d01<-table(df01$idade_tab2, df01$SEXO)
dH01<-d01[,2]
dM01<-d01[,3]

d02<-table(df02$idade_tab2, df02$SEXO)
dH02<-d02[,2]
dM02<-d02[,3]

d03<-table(df03$idade_tab2, df03$SEXO)
dH03<-d03[,2]
dM03<-d03[,3]

d04<-table(df04$idade_tab2, df04$SEXO)
dH04<-d04[,2]
dM04<-d04[,3]

d05<-table(df05$idade_tab2, df05$SEXO)
dH05<-d05[,2]
dM05<-d05[,3]

d06<-table(df06$idade_tab2, df06$SEXO)
dH06<-d06[,2]
dM06<-d06[,3]

d07<-table(df07$idade_tab2, df07$SEXO)
dH07<-d07[,2]
dM07<-d07[,3]

d08<-table(df08$idade_tab2, df08$SEXO)
dH08<-d08[,2]
dM08<-d08[,3]

d09<-table(df09$idade_tab2, df09$SEXO)
dH09<-d09[,2]
dM09<-d09[,3]

d10<-table(df10$idade_tab2, df10$SEXO)
dH10<-d10[,1]
dM10<-d10[,2]

d11<-table(df11$idade_tab2, df11$SEXO)
dH11<-d11[,1]
dM11<-d11[,2]

d12<-table(df12$idade_tab2, df12$SEXO)
dH12<-d12[,2]
dM12<-d12[,3]

d13<-table(df13$idade_tab2, df13$SEXO)
dH13<-d13[,2]
dM13<-d13[,3]

d14<-table(df14$idade_tab2, df14$SEXO)
dH14<-d14[,2]
dM14<-d14[,3]

d15<-table(df15$idade_tab2, df15$SEXO)
dH15<-d15[,2]
dM15<-d15[,3]

d16<-table(df16$idade_tab2, df16$SEXO)
dH16<-d16[,2]
dM16<-d16[,3]

d17<-table(df17$idade_tab2, df17$SEXO)
dH17<-d17[,2]
dM17<-d17[,3]

# Creating Male deaths matrix by year
Age<-0:129
dHmatrix<-cbind(Age,dH94,dH95,dH96,dH97,dH98,dH99,dH00,dH01,dH02,dH03,dH04,dH05,dH06,dH07,dH08,
                dH09,dH10,dH11,dH12,dH13,dH14,dH15,dH16,dH17)
colnames(dHmatrix)=c("Age",1994:2017)

dMmatrix<-cbind(Age,dM94,dM95,dM96,dM97,dM98,dM99,dM00,dM01,dM02,dM03,dM04,dM05,dM06,dM07,dM08,
                dM09,dM10,dM11,dM12,dM13,dM14,dM15,dM16,dM17)
colnames(dMmatrix)=c("Age", 1994:2017)

# converting to long format to plot in ggplot
dHmatrix.2<-reshape(dHmatrix, direction = "long", varying = list(names(dHmatrix)[2:25]), v.names = "Rates", 
        idvar = "Age", timevar = "Year", times = 1994:2017)

dMmatrix.2<-reshape(dMmatrix, direction = "long", varying = list(names(dMmatrix)[2:25]), v.names = "Rates", 
                    idvar = "Age", timevar = "Year", times = 1994:2017)



#plot quantidade de obitos HOMENS
plot(dH94, type="l", col="1", main= "São Paulo, Male Deaths (1994 - 2017)", xlab="Age", ylab="dx")
lines(dH95, type="l")
lines(dH96, type="l")
lines(dH97, type="l")
lines(dH98, type="l")
lines(dH99, type="l")
lines(dH00, type="l")
lines(dH01, type="l")
lines(dH02, type="l")
lines(dH03, type="l")
lines(dH04, type="l")
lines(dH05, type="l")
lines(dH06, type="l")
lines(dH07, type="l")
lines(dH08, type="l")
lines(dH09, type="l")
lines(dH10, type="l")
lines(dH11, type="l")
lines(dH12, type="l")
lines(dH13, type="l")
lines(dH14, type="l")
lines(dH15, type="l")
lines(dH16, type="l")
lines(dH17, type="l")

#plot quantidade de obitos MULHERES
plot(dM94, type="l", col="1")
lines(dM95, type="l")
lines(dM96, type="l")
lines(dM97, type="l")
lines(dM98, type="l")
lines(dM99, type="l")
lines(dM00, type="l")
lines(dM01, type="l")
lines(dM02, type="l")
lines(dM03, type="l")
lines(dM04, type="l")
lines(dM05, type="l")
lines(dM06, type="l")
lines(dM07, type="l")
lines(dM08, type="l")
lines(dM09, type="l")
lines(dM10, type="l")
lines(dM11, type="l")
lines(dM12, type="l")
lines(dM13, type="l")
lines(dM14, type="l")
lines(dM15, type="l")
lines(dM16, type="l")
lines(dM17, type="l")


# Folder 
setwd("C:\\Users\\Gustavo\\Desktop\\DOUTORADO\\MINHA PROJE??O\\Fecundidade_DN")

### FECUNDIDADE
bf94<-read.dbc("DNRSP94.DBC")
bf95<-read.dbc("DNRSP95.DBC")
bf96<-read.dbc("DNSP1996.DBC")
bf97<-read.dbc("DNSP1997.DBC")
bf98<-read.dbc("DNSP1998.DBC")
bf99<-read.dbc("DNSP1999.DBC")
bf00<-read.dbc("DNSP2000.DBC")
bf01<-read.dbc("DNSP2001.DBC")
bf02<-read.dbc("DNSP2002.DBC")
bf03<-read.dbc("DNSP2003.DBC")
bf04<-read.dbc("DNSP2004.DBC")
bf05<-read.dbc("DNSP2005.DBC")
bf06<-read.dbc("DNSP2006.DBC")
bf07<-read.dbc("DNSP2007.DBC")
bf08<-read.dbc("DNSP2008.DBC")
bf09<-read.dbc("DNSP2009.DBC")
bf10<-read.dbc("DNSP2010.DBC")
bf11<-read.dbc("DNSP2011.DBC")
bf12<-read.dbc("DNSP2012.DBC")
bf13<-read.dbc("DNSP2013.DBC")
bf14<-read.dbc("DNSP2014.DBC")
bf15<-read.dbc("DNSP2015.DBC")
bf16<-read.dbc("DNSP2016.DBC")
bf17<-read.dbc("DNSP2017.DBC")

# Creating births vectors
b94<-table(bf94$IDADE_MAE, bf94$SEXO)
tb94<-b94[,2]+b94[,3]

b95<-table(bf95$IDADE_MAE, bf95$SEXO)
tb95<-b95[,2]+b95[,3]

b96<-table(bf96$IDADEMAE, bf96$SEXO)
tb96<-b96[,2]+b96[,3]

b97<-table(bf97$IDADEMAE, bf97$SEXO)
tb97<-b97[,2]+b97[,3]

b98<-table(bf98$IDADEMAE, bf98$SEXO)
tb98<-b98[,2]+b98[,3]

b99<-table(bf99$IDADEMAE, bf99$SEXO)
tb99<-b99[,2]+b99[,3]

b00<-table(bf00$IDADEMAE, bf00$SEXO)
tb00<-b00[,2]+b00[,3]

b01<-table(bf01$IDADEMAE, bf01$SEXO)
tb01<-b01[,2]+b01[,3]

b02<-table(bf02$IDADEMAE, bf02$SEXO)
tb02<-b02[,2]+b02[,3]

b03<-table(bf03$IDADEMAE, bf03$SEXO)
tb03<-b03[,2]+b03[,3]

b04<-table(bf04$IDADEMAE, bf04$SEXO)
tb04<-b04[,2]+b04[,3]

b05<-table(bf05$IDADEMAE, bf05$SEXO)
tb05<-b05[,2]+b05[,3]

b06<-table(bf06$IDADEMAE, bf06$SEXO)
tb06<-b06[,2]+b06[,3]

b07<-table(bf07$IDADEMAE, bf07$SEXO)
tb07<-b07[,2]+b07[,3]

b08<-table(bf08$IDADEMAE, bf08$SEXO)
tb08<-b08[,2]+b08[,3]

b09<-table(bf09$IDADEMAE, bf09$SEXO)
tb09<-b09[,2]+b09[,3]

b10<-table(bf10$IDADEMAE, bf10$SEXO)
tb10<-b10[,1]+b10[,2]

b11<-table(bf11$IDADEMAE, bf11$SEXO)
tb11<-b11[,1]+b11[,2]

b12<-table(bf12$IDADEMAE, bf12$SEXO)
tb12<-b12[,2]+b12[,3]

b13<-table(bf13$IDADEMAE, bf13$SEXO)
tb13<-b13[,2]+b13[,3]

b14<-table(bf14$IDADEMAE, bf14$SEXO)
tb14<-b14[,1]+b14[,3]

b15<-table(bf15$IDADEMAE, bf15$SEXO)
tb15<-b15[,2]+b15[,3]

b16<-table(bf16$IDADEMAE, bf16$SEXO)
tb16<-b16[,2]+b16[,3]

b17<-table(bf17$IDADEMAE, bf17$SEXO)
tb17<-b17[,2]+b17[,3]

# Creating births matrix by year
bmatrix<-cbind(tb94,tb95,tb96,tb97,tb98,tb99,tb00,tb01,tb02,tb03,tb04,tb05,tb06,tb07,tb08,
               tb09,tb10,tb11,tb12,tb13,tb14,tb15,tb16,tb17)
colnames(bmatrix)<-c(1994:2017)

#plot quantidade de nascidos vivos
plot(tb94, type="l", col="1")
lines(tb95, type="l")
lines(tb96, type="l")
lines(tb97, type="l")
lines(tb98, type="l")
lines(tb99, type="l")
lines(tb00, type="l")
lines(tb01, type="l")
lines(tb02, type="l")
lines(tb03, type="l")
lines(tb04, type="l")
lines(tb05, type="l")
lines(tb06, type="l")
lines(tb07, type="l")
lines(tb08, type="l")
lines(tb09, type="l")
lines(tb10, type="l")
lines(tb11, type="l")
lines(tb12, type="l")
lines(tb13, type="l")
lines(tb14, type="l")
lines(tb15, type="l")
lines(tb16, type="l")
lines(tb17, type="l")

# Saving matrix 
write.csv(bmatrix, file="bmatrix.csv")
write.csv(dHmatrix, file="dHmatrix.csv")
write.csv(dMmatrix, file="dMmatrix.csv")


### Calculating Mx rates by sex
# lendo arquivo de popula??o
h<-read.table("C:\\Users\\Gustavo\\Desktop\\DOUTORADO\\MINHA PROJEÇÃO\\População\\pop.Homens.txt", header=T)
m<-read.table("C:\\Users\\Gustavo\\Desktop\\DOUTORADO\\MINHA PROJEÇÃO\\População\\pop.Mulheres.txt", header=T)

# Lendo arquivo de mortes 
dh<-read.table("C:\\Users\\Gustavo\\Desktop\\DOUTORADO\\MINHA PROJEÇÃO\\Mortalidade_DO\\dHmatrix.txt", header=T)
dm<-read.table("C:\\Users\\Gustavo\\Desktop\\DOUTORADO\\MINHA PROJEÇÃO\\Mortalidade_DO\\dMmatrix.txt", header=T)

female_pop<-m[,2:25]
male_pop<-h[,2:25]

Mx_Female<-dm/female_pop
plot(log(Mx_Female$X2017), type="l", main= "São Paulo - Female Mx (1994-2017)", xlab="Age", ylab="Log(Mx)")
lines(log(Mx_Female$X1994), type="l")
lines(log(Mx_Female$X1995), type="l")
lines(log(Mx_Female$X1996), type="l")
lines(log(Mx_Female$X1997), type="l")
lines(log(Mx_Female$X1998), type="l")
lines(log(Mx_Female$X1999), type="l")
lines(log(Mx_Female$X2000), type="l")
lines(log(Mx_Female$X2001), type="l")
lines(log(Mx_Female$X2002), type="l")
lines(log(Mx_Female$X2003), type="l")
lines(log(Mx_Female$X2004), type="l")
lines(log(Mx_Female$X2005), type="l")
lines(log(Mx_Female$X2006), type="l")
lines(log(Mx_Female$X2007), type="l")
lines(log(Mx_Female$X2008), type="l")
lines(log(Mx_Female$X2009), type="l")
lines(log(Mx_Female$X2010), type="l")
lines(log(Mx_Female$X2011), type="l")
lines(log(Mx_Female$X2012), type="l")
lines(log(Mx_Female$X2013), type="l")
lines(log(Mx_Female$X2014), type="l")
lines(log(Mx_Female$X2015), type="l")
lines(log(Mx_Female$X2016), type="l")


Mx_Male<-dh/male_pop
plot(log(Mx_Male$X2017), type="l", main= "São Paulo - Male Mx (1994-2017)", xlab="Age", ylab="Log(Mx)")
lines(log(Mx_Male$X1994), type="l")
lines(log(Mx_Male$X1995), type="l")
lines(log(Mx_Male$X1996), type="l")
lines(log(Mx_Male$X1997), type="l")
lines(log(Mx_Male$X1998), type="l")
lines(log(Mx_Male$X1999), type="l")
lines(log(Mx_Male$X2000), type="l")
lines(log(Mx_Male$X2001), type="l")
lines(log(Mx_Male$X2002), type="l")
lines(log(Mx_Male$X2003), type="l")
lines(log(Mx_Male$X2004), type="l")
lines(log(Mx_Male$X2005), type="l")
lines(log(Mx_Male$X2006), type="l")
lines(log(Mx_Male$X2007), type="l")
lines(log(Mx_Male$X2008), type="l")
lines(log(Mx_Male$X2009), type="l")
lines(log(Mx_Male$X2010), type="l")
lines(log(Mx_Male$X2011), type="l")
lines(log(Mx_Male$X2012), type="l")
lines(log(Mx_Male$X2013), type="l")
lines(log(Mx_Male$X2014), type="l")
lines(log(Mx_Male$X2015), type="l")
lines(log(Mx_Male$X2016), type="l")

write.csv(Mx_Male, file="Mx_Male.csv")
write.csv(Mx_Female, file="Mx_Female.csv")

### Calculating Fx rates 
b<-read.table("C:\\Users\\Gustavo\\Desktop\\DOUTORADO\\MINHA PROJEÇÃO\\Fecundidade_DN\\bmatrix.txt", header=T)
p<-read.table("C:\\Users\\Gustavo\\Desktop\\DOUTORADO\\MINHA PROJEÇÃO\\Fecundidade_DN\\bpop.txt", header=T)

Fx<-b/p
Fx<-round(Fx,4)
write.csv(Fx, file="Fx_rates.csv")

plot(Fx$X1994, type="l")
lines(Fx$X1995, type="l")
lines(Fx$X1996, type="l")
lines(Fx$X1997, type="l")
lines(Fx$X1998, type="l")
lines(Fx$X1999, type="l")
lines(Fx$X2000, type="l")
lines(Fx$X2001, type="l")
lines(Fx$X2002, type="l")
lines(Fx$X2003, type="l")
lines(Fx$X2004, type="l")
lines(Fx$X2005, type="l")
lines(Fx$X2006, type="l")
lines(Fx$X2007, type="l")
lines(Fx$X2008, type="l")
lines(Fx$X2009, type="l")
lines(Fx$X2010, type="l")
lines(Fx$X2011, type="l")
lines(Fx$X2012, type="l")
lines(Fx$X2013, type="l")
lines(Fx$X2014, type="l")
lines(Fx$X2015, type="l")
lines(Fx$X2016, type="l")
lines(Fx$X2017, type="l")

# creating year and age variables
colnames(Fx)<-1994:2017
Fx$Age<-12:55
Fx<-round(Fx,6)

## Saving as long format
Fx_long<-reshape(Fx, direction = "long", varying = list(names(Fx)[1:24]), v.names = "ASFR", 
             idvar = "Age", timevar = "Year", times = 1994:2017)
write.csv(Fx_long, file="Fx2.csv")

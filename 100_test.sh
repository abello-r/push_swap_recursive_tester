BLUE='\033[0;34m'
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m'

MOVIMIENTOS=700 # Introduce aquí el limite > 700 - 900 - 1100 - 1300 - 1500
COUNT=0
NUM1=$(($RANDOM%99501)) NUM2=$(($RANDOM%99991)) NUM3=$(($RANDOM%999301)) NUM4=$(($RANDOM%999201))
NUM5=$(($RANDOM%99999)) NUM6=$(($RANDOM%99201)) NUM7=$(($RANDOM%39901)) NUM8=$(($RANDOM%99401))
NUM9=$(($RANDOM%99501)) NUM10=$(($RANDOM%69901)) NUM11=$(($RANDOM%99919)) NUM12=$(($RANDOM%99801))
NUM13=$(($RANDOM%999999)) NUM14=$(($RANDOM%19001)) NUM15=$(($RANDOM%1101)) NUM16=$(($RANDOM%19201))
NUM17=$(($RANDOM%19301)) NUM18=$(($RANDOM%2101)) NUM19=$(($RANDOM%2101)) NUM20=$(($RANDOM%29101))
NUM21=$(($RANDOM%19301)) NUM22=$(($RANDOM%14501)) NUM23=$(($RANDOM%104321)) NUM24=$(($RANDOM%10155))
NUM25=$(($RANDOM%10132)) NUM26=$(($RANDOM%105871)) NUM27=$(($RANDOM%1014325)) NUM28=$(($RANDOM%8101))
NUM29=$(($RANDOM%8101)) NUM30=$(($RANDOM%9101)) NUM31=$(($RANDOM%9101)) NUM32=$(($RANDOM%1401))
NUM33=$(($RANDOM%4101)) NUM34=$(($RANDOM%33101)) NUM35=$(($RANDOM%3101)) NUM36=$(($RANDOM%3101))
NUM37=$(($RANDOM%2101)) NUM38=$(($RANDOM%8101)) NUM39=$(($RANDOM%7101)) NUM40=$(($RANDOM%1501))
NUM41=$(($RANDOM%9001)) NUM42=$(($RANDOM%9901)) NUM43=$(($RANDOM%901)) NUM44=$(($RANDOM%901))
NUM45=$(($RANDOM%999901)) NUM46=$(($RANDOM%99701)) NUM47=$(($RANDOM%15401)) NUM48=$(($RANDOM%10145))
NUM49=$(($RANDOM%10178)) NUM50=$(($RANDOM%10189)) NUM51=$(($RANDOM%50561)) NUM52=$(($RANDOM%40871))
NUM53=$(($RANDOM%3901)) NUM54=$(($RANDOM%299091)) NUM55=$(($RANDOM%10991)) NUM56=$(($RANDOM%1014503))
NUM57=$(($RANDOM%810165)) NUM58=$(($RANDOM%7101)) NUM59=$(($RANDOM%881801)) NUM60=$(($RANDOM%88101))
NUM61=$(($RANDOM%200101)) NUM62=$(($RANDOM%115101)) NUM63=$(($RANDOM%67101)) NUM64=$(($RANDOM%175401))
NUM65=$(($RANDOM%754101)) NUM66=$(($RANDOM%753101)) NUM67=$(($RANDOM%1315401)) NUM68=$(($RANDOM%187501))
NUM69=$(($RANDOM%112234)) NUM70=$(($RANDOM%104321)) NUM71=$(($RANDOM%10761)) NUM72=$(($RANDOM%145601))
NUM73=$(($RANDOM%884101)) NUM74=$(($RANDOM%1024561)) NUM75=$(($RANDOM%183201)) NUM76=$(($RANDOM%10147))
NUM77=$(($RANDOM%101675)) NUM78=$(($RANDOM%101568)) NUM79=$(($RANDOM%1019255)) NUM80=$(($RANDOM%1034561))
NUM81=$(($RANDOM%174532)) NUM82=$(($RANDOM%332101)) NUM83=$(($RANDOM%514101)) NUM84=$(($RANDOM%753101))
NUM85=$(($RANDOM%582101)) NUM86=$(($RANDOM%737101)) NUM87=$(($RANDOM%245101)) NUM88=$(($RANDOM%23101))
NUM89=$(($RANDOM%74101)) NUM90=$(($RANDOM%1801)) NUM91=$(($RANDOM%19101)) NUM92=$(($RANDOM%104571))
NUM93=$(($RANDOM%32101)) NUM94=$(($RANDOM%999101)) NUM95=$(($RANDOM%99101)) NUM96=$(($RANDOM%99101))
NUM97=$(($RANDOM%99601)) NUM98=$(($RANDOM%9301)) NUM99=$(($RANDOM%992101)) NUM100=$(($RANDOM%27537))

ARGS="$NUM1 $NUM2 $NUM3 $NUM4 $NUM5 $NUM6 $NUM7 $NUM8 $NUM9 $NUM10 $NUM11 $NUM12 $NUM13 $NUM14 $NUM15 $NUM16 $NUM17 $NUM18 $NUM19 $NUM20 $NUM21 $NUM22 $NUM23 $NUM24 $NUM25 $NUM26 $NUM27 $NUM28 $NUM29 $NUM30 $NUM31 $NUM32 $NUM33 $NUM34 $NUM35 $NUM36 $NUM37 $NUM38 $NUM39 $NUM40 $NUM41 $NUM42 $NUM43 $NUM44 $NUM45 $NUM46 $NUM47 $NUM48 $NUM49 $NUM50 $NUM51 $NUM52 $NUM53 $NUM54 $NUM55 $NUM56 $NUM57 $NUM58 $NUM59 $NUM60 $NUM61 $NUM62 $NUM63 $NUM64 $NUM65 $NUM66 $NUM67 $NUM68 $NUM69 $NUM70 $NUM71 $NUM72 $NUM73 $NUM74 $NUM75 $NUM76 $NUM77 $NUM78 $NUM79 $NUM80 $NUM81 $NUM82 $NUM83 $NUM84 $NUM85 $NUM86 $NUM87 $NUM88 $NUM89 $NUM90 $NUM91 $NUM92 $NUM93 $NUM94 $NUM95 $NUM96 $NUM97 $NUM98 $NUM99 $NUM100"
sleep 0.025
clear

if [ -f push_swap ];
	then
		printf "    ${BLUE}|-----${BLUE}100 Números${BLUE}-----| ${BLUE}42 ${GREEN}Push_Swap ${RED}Tester ${BLUE}.${GREEN}.${RED}.${NC}${NC}\n\n"
		OK=$(./push_swap "${ARGS}" | ./checker "${ARGS}")
		if [[ ! -z ${OK} && ${OK} == "KO" ]]
			then
				printf "${RED}"
		elif [[ ! -z ${OK} && ${OK} == "OK" ]]
			then
				printf "${GREEN}"
		else
			printf "${NC}"
		fi

		./push_swap "${ARGS}" | ./checker "${ARGS}"
		printf "${NC}"
		COUNT=$(./push_swap "${ARGS}" | wc -l)
		if [ ${COUNT} -eq 1 ]
			then
				printf "\t${BLUE}Número repetido\n"
		fi
		if [ ${COUNT} -gt `expr $MOVIMIENTOS - 100` -a ${COUNT} -ne 1 ]
			then
				printf " ${RED}${COUNT} ${NC}Reglas | MAX ${GREEN}${MOVIMIENTOS} ${NC}\n"
		elif [ ${COUNT} -gt `expr $MOVIMIENTOS / 2` ]
			then
				printf " ${YELLOW}${COUNT} ${NC}Reglas | MAX ${GREEN}${MOVIMIENTOS} ${NC}\n"
		elif [ ${COUNT} -lt `expr $MOVIMIENTOS / 2` -a ${COUNT} -ne 1 ]
				then
					printf " ${GREEN}${COUNT} ${NC}Reglas | MAX ${GREEN}${MOVIMIENTOS} ${NC}\n"
		fi
		if [ ${COUNT} -eq 0 ]
			then
				printf "${GREEN}Están ordenados${NC}\n"
		fi
		printf "\n    ${BLUE}|---------------------|\n\n"
	else
		make
		bash 100_test.sh
fi

if [[ ${COUNT} -gt ${MOVIMIENTOS} || ${OK} == "KO" ]]
	then
		printf	"${YELLOW}Error${COUNT} | Puedes ver el log en Error.txt\n${NC}"
		printf	"\n${BLUE}Si hay algún problema con el test escribir a AJUNCOSA ó ABELLO-R\n"
		printf	"\n${GREEN}Puedes modificar el límite máximo dentro del script\n\n${NC}"
		if [ -f Error.txt ]
			then
				rm Error.txt
		fi
		touch Error.txt
		chmod 777 Error.txt
		echo "Sí hay algún problema con el test escribir a ajuncosa ó abello-r" > Error.txt
		if [ ${COUNT} -gt ${MOVIMIENTOS} ]
			then
				let RESTA=`expr $COUNT - $MOVIMIENTOS`
				echo "Has superado el límite máximo de movimientos [ ${MOVIMIENTOS} ] y has hecho -->${COUNT}" >> Error.txt
				echo "Te has excedido por ${RESTA} movimientos" >> Error.txt
			else
				echo "Tu push_swap no ordena los números bien :(" >> Error.txt
		fi
		echo "Los siguientes números son con los que ha fallado tu programa : " >> Error.txt
		echo "" >> Error.txt
		echo "$NUM1 $NUM2 $NUM3 $NUM4 $NUM5 $NUM6 $NUM7 $NUM8 $NUM9 $NUM10" >> Error.txt
		echo "$NUM11 $NUM12 $NUM13 $NUM14 $NUM15 $NUM16 $NUM17 $NUM18 $NUM19 $NUM20" >> Error.txt
		echo "$NUM21 $NUM22 $NUM23 $NUM24 $NUM25 $NUM26 $NUM27 $NUM28 $NUM29 $NUM30" >> Error.txt
		echo "$NUM31 $NUM32 $NUM33 $NUM34 $NUM35 $NUM36 $NUM37 $NUM38 $NUM39 $NUM40" >> Error.txt
		echo "$NUM41 $NUM42 $NUM43 $NUM44 $NUM45 $NUM46 $NUM47 $NUM48 $NUM49 $NUM50" >> Error.txt
		echo "$NUM51 $NUM52 $NUM53 $NUM54 $NUM55 $NUM56 $NUM57 $NUM58 $NUM59 $NUM60" >> Error.txt
		echo "$NUM61 $NUM62 $NUM63 $NUM64 $NUM65 $NUM66 $NUM67 $NUM68 $NUM69 $NUM70" >> Error.txt
		echo "$NUM71 $NUM72 $NUM73 $NUM74 $NUM75 $NUM76 $NUM77 $NUM78 $NUM79 $NUM80" >> Error.txt
		echo "$NUM81 $NUM82 $NUM83 $NUM84 $NUM85 $NUM86 $NUM87 $NUM88 $NUM89 $NUM90" >> Error.txt
		echo "$NUM91 $NUM92 $NUM93 $NUM94 $NUM95 $NUM96 $NUM97 $NUM98 $NUM99 $NUM100" >> Error.txt
		echo "" >> Error.txt
		echo "Para copiar y pegar en una línea:" >> Error.txt
		echo "${ARGS}" >> Error.txt
		exit
fi

if [ -f Error.txt ]
	then
		rm Error.txt
fi

printf "${BLUE}PRESS CTRL + D to STOP\n\n\n"
PID_KILL=$(ps -ef | grep "100_test.sh" | grep -v "grep" | awk '{print $2}')
bash  100_test.sh &
kill $PID_KILL
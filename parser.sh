BLUE='\033[0;34m'
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m'
RES=0;

if [ -f push_swap ]
	then
		clear
		printf "\t${BLUE} | Push_Swap Parser Test |${BLUE}\n"

		######################TEST 1######################
		sleep 0.2
		printf "\t |                       |\n"
		RES=$(./push_swap 2>&1 --2 1 3 4 5 6 7 8 9 10 | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${GREEN}TEST 1 > OK      ${BLUE}|\n";
			else
				printf "\t |\t${RED}TEST 1 > KO      ${BLUE}|\n";
		fi

		######################TEST 2######################
		sleep 0.2
		RES=$(./push_swap 2>&1 -------21------ --3--- 4 5 6- 7- 8- 9 -10- | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${GREEN}TEST 2 > OK      ${BLUE}|\n";
			else
				printf "\t |\t${RED}TEST 2 > KO      ${BLUE}|\n";
		fi
		
		######################TEST 3######################
		sleep 0.2
		RES=$(./push_swap 2>&1 "1 2 3 4 5-" | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${GREEN}TEST 3 > OK      ${BLUE}|\n";
			else
				printf "\t |\t${RED}TEST 3 > KO      ${BLUE}|\n";
		fi
		
		######################TEST 4######################
		sleep 0.2
		RES=$(./push_swap 2>&1 "1 2 3 4 5a2" | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${GREEN}TEST 4 > OK      ${BLUE}|\n";
			else
				printf "\t |\t${RED}TEST 4 > KO      ${BLUE}|\n";
		fi

		######################TEST 5######################
		sleep 0.2
		RES=$(./push_swap 2>&1 1 2 3 4 -f | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${GREEN}TEST 5 > OK      ${BLUE}|\n";
			else
				printf "\t |\t${RED}TEST 5 > KO      ${BLUE}|\n";
		fi

		######################TEST 6######################
		sleep 0.2
		RES=$(./push_swap 2>&1 1 2 tres 4 5 | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${GREEN}TEST 6 > OK      ${BLUE}|\n";
			else
				printf "\t |\t${RED}TEST 6 > KO      ${BLUE}|\n";
		fi

		######################TEST 7######################
		sleep 0.2
		RES=$(./push_swap 2>&1 +24+ +25+ -23- -22- +21+ | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${GREEN}TEST 7 > OK      ${BLUE}|\n";
			else
				printf "\t |\t${RED}TEST 7 > KO      ${BLUE}|\n";
		fi

		######################TEST 8######################
		sleep 0.2
		RES=$(./push_swap 2>&1 "abc" "123" "cde" "789" | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${GREEN}TEST 8 > OK      ${BLUE}|\n";
			else
				printf "\t |\t${RED}TEST 8 > KO      ${BLUE}|\n";
		fi

		######################TEST 9######################
		sleep 0.2
		RES=$(./push_swap 2>&1 . | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${GREEN}TEST 9 > OK      ${BLUE}|\n";
			else
				printf "\t |\t${RED}TEST 9 > KO      ${BLUE}|\n";
		fi

		######################TEST 10######################
		sleep 0.2
		RES=$(./push_swap 2>&1 - | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${GREEN}TEST10 > OK      ${BLUE}|\n";
			else
				printf "\t |\t${RED}TEST10 > KO      ${BLUE}|\n";
		fi

		######################TEST 11######################
		sleep 0.2
		RES=$(./push_swap 2>&1 + | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${GREEN}TEST11 > OK      ${BLUE}|\n";
			else
				printf "\t |\t${RED}TEST11 > KO      ${BLUE}|\n";
		fi
		
		######################TEST 12######################
		sleep 0.2
		RES=$(./push_swap 2>&1 0 1 2 3 4 5 6 7 8 9 1000000 | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${RED}TEST12 > KO      ${BLUE}|\n";
			else
				printf "\t |\t${GREEN}TEST12 > OK      ${BLUE}|\n";
		fi
		
		######################TEST 13######################
		sleep 0.2
		RES=$(./push_swap 2>&1 94325490582093485 3924859043285023498 39042582093458 | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${GREEN}TEST13 > OK      ${BLUE}|\n";
			else
				printf "\t |\t${RED}TEST13 > KO      ${BLUE}|\n";
		fi

		######################TEST 14######################
		sleep 0.2
		RES=$(./push_swap 2>&1 -84937253892475 -8342573289457 | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${GREEN}TEST14 > OK      ${BLUE}|\n";
			else
				printf "\t |\t${RED}TEST14 > KO      ${BLUE}|\n";
		fi
		
		######################TEST 15######################
		sleep 0.2
		RES=$(./push_swap 2>&1 -1 -2 -3 -4 -5 "-6 -7 -8" 10 9 | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${RED}TEST15 > KO      ${BLUE}|\n";
			else
				printf "\t |\t${GREEN}TEST15 > OK      ${BLUE}|\n";
		fi
		
		######################TEST 16######################
		sleep 0.2
		RES=$(./push_swap 2>&1 321F456 "1" "-.1" | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${GREEN}TEST16 > OK      ${BLUE}|\n";
			else
				printf "\t |\t${RED}TEST16 > KO      ${BLUE}|\n";
		fi
		
		######################TEST 17######################
		sleep 0.2
		RES=$(./push_swap 2>&1 "Ya no se que probar" | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${GREEN}TEST17 > OK      ${BLUE}|\n";
			else
				printf "\t |\t${RED}TEST17 > KO      ${BLUE}|\n";
		fi

		######################TEST 18######################
		sleep 0.2
		RES=$(./push_swap 2>&1 "-----------" | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${GREEN}TEST18 > OK      ${BLUE}|\n";
			else
				printf "\t |\t${RED}TEST18 > KO      ${BLUE}|\n";
		fi

		######################TEST 19######################
		sleep 0.2
		RES=$(./push_swap 2>&1 "++++++++++++" | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${GREEN}TEST19 > OK      ${BLUE}|\n";
			else
				printf "\t |\t${RED}TEST19 > KO      ${BLUE}|\n";
		fi

		######################TEST 20######################
		sleep 0.2
		RES=$(./push_swap 2>&1 " " " " "1" "2" "3" "-1" | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${RED}TEST20 > KO      ${BLUE}|\n";
			else
				printf "\t |\t${GREEN}TEST20 > OK      ${BLUE}|\n";
		fi
		######################TEST 21######################
		sleep 0.2
		RES=$(./push_swap 2>&1 "-0000000001" | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${RED}TEST21 > KO      ${BLUE}|\n";
			else
				printf "\t |\t${GREEN}TEST21 > OK      ${BLUE}|\n";
		fi
		######################TEST 22######################
		sleep 0.2
		RES=$(./push_swap 2>&1 "asdklfj klsjfdkldj" | wc -l)
		if [[ ${RES} -eq 1 ]]
			then
				printf "\t |\t${RED}TEST22 > KO      ${BLUE}|\n";
			else
				printf "\t |\t${GREEN}TEST22 > OK      ${BLUE}|\n";
		fi
		######################FINAL######################
		printf "\t |                       |\n"
		printf "\t |_______________________|\t${GREEN} Made by : abello-r\n"

else
	make
	clear
	bash parser.sh
fi
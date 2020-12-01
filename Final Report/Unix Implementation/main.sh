#!/bin/sh
MainMenu()
{
	while [ "$CHOICE" != "START" ]
	do
		clear
		echo "================================================================="
		echo "|                    Oracle All Inclusive Tool                  |"
		echo "|    Main Menu -Select Desired Operation(s):          |"
		echo "|        <CTRL-Z Anytime to Enter Interactive CMD Prompt>       |"
		echo "-----------------------------------------------------------------"
		echo " $IS_SELECTEDM M)  View Manual"
		echo " "
		echo " $IS_SELECTED1 1)  Drop Tables"
		echo " $IS_SELECTED2 2)  Create Tables"
		echo " $IS_SELECTED3 3)  Populate Tables"
		echo " $IS_SELECTED4 4)  Query Tables"
		echo " "
		echo " $IS_SELECTEDX X)  Force/Stop/Kill Oracle DB"
		echo " "
		echo " $IS_SELECTEDE E)  End/Exit"
		echo "Choose: "
		read CHOICE

		if [ "$CHOICE" == "0" ]
		then
			echo "Nothing Here"
		elif [ "$CHOICE" == "1" ]
		then
			bash drop_tables.sh
			read CHOICE
			Pause
		elif [ "$CHOICE" == "2" ]
		then 
			bash create_tables.sh
			read CHOICE
			Pause
		elif [ "$CHOICE" == "3" ]
		then
			bash populate_tables.sh
			read CHOICE
			Pause
		elif [ "$CHOICE" == "4" ]
		then
			clear
			echo "================================================================="
			echo "|                    Oracle All Inclusive Tool                  |"
			echo "|    Query Menu -Select Desired Operation(s):                   |"
			echo "|        <CTRL-Z Anytime to Enter Interactive CMD Prompt>       |"
			echo "-----------------------------------------------------------------"
			echo " $IS_SELECTED1 1)  Advanced Query 1"
			echo " $IS_SELECTED2 2)  Advanced Query 2"
			echo " $IS_SELECTED3 3)  Advanced Query 3"
			echo " $IS_SELECTED4 4)  Advanced Query 4"
			echo " $IS_SELECTED4 5)  Advanced Query 5"
			echo " "
			echo " $IS_SELECTEDX X)  Force/Stop/Kill Oracle DB"
			echo " "
			echo " $IS_SELECTEDE E)  End/Exit"
			echo "Choose: "
			read CHOICE

			if [ "$CHOICE" == "0" ]
			then
			echo "Nothing Here"
			elif [ "$CHOICE" == "1" ]
			then
				bash q1.sh
				read CHOICE
			elif [ "$CHOICE" == "2" ]
			then 
				bash q2.sh
				read CHOICE
			elif [ "$CHOICE" == "3" ]
			then
				bash q3.sh
				read CHOICE
			elif [ "$CHOICE" == "4" ]
			then
				bash q4.sh
				read CHOICE
			elif [ "$CHOICE" == "5" ]
			then
				bash q5.sh
				read CHOICE
			elif [ "$CHOICE" == "E" ]
			then
				exit
			fi
			Pause
		elif [ "$CHOICE" == "E" ]
		then
			exit
		fi

	done
}
#--COMMENTS BLOCK--
# Main Program 
#--COMMENTS BLOCK--

ProgramStart(){
	StartMessage
	while [ 1 ]
	do
		MainMenu
	done
}


ProgramStart